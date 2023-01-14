import 'package:flutter/material.dart';

class AnimatedValue<T> {
  late AnimationController _animationController;
  Animation? _tweenAnimation;
  late Curve _curve;
  late T _trueValue;
  late CurvedAnimation _curvedAnimation;

  AnimatedValue(
      {required T initialValue,
        Curve curve = Curves.linear,
        required TickerProvider vsync,
        Duration? duration}) {
    _animationController = AnimationController(
        vsync: vsync, duration: duration ?? const Duration(milliseconds: 500));
    _curve = curve;
    _curvedAnimation =
        CurvedAnimation(parent: _animationController, curve: _curve);
    _trueValue = initialValue;
  }

  void setCurve(Curve curve) {
    _curve = curve;
    _curvedAnimation.dispose();
    _curvedAnimation =
        CurvedAnimation(parent: _animationController, curve: _curve);
  }

  void setDuration(Duration duration) {
    _animationController.duration = duration;
  }

  void addListener(VoidCallback listener) {
    _animationController.addListener(() {
      if (!settingEvent) {
        listener();
      } else {
        settingEvent = false;
      }
    });
  }

  void addStatusListener(AnimationStatusListener listener) {
    _animationController.addStatusListener((status) {
      if (!settingEvent) {
        listener(status);
      } else {
        settingEvent = false;
      }
    });
  }

  // void removeListener(VoidCallback listener){
  //   _animationController.removeListener(listener);
  // }
  //
  // void removeStatusListener(AnimationStatusListener listener){
  //   _animationController.removeStatusListener(listener);
  // }

  bool get isAnimating =>
      _tweenAnimation != null && _animationController.isAnimating;

  T get value {
    if (isAnimating) {
      return _tweenAnimation!.value;
    } else {
      return _trueValue;
    }
  }

  bool settingEvent = false;

  set value(T v) {
    if (_trueValue == v) {
      return;
    }
    T pre = value;
    _tweenAnimation = Tween<T>(begin: pre, end: v).animate(_curvedAnimation);
    _trueValue = v;
    settingEvent = true;
    _animationController.reset();
    settingEvent = true;
    _animationController.forward();
  }

  void setValueAsInitial(T initialValue, {bool skipEvent = false}) {
    settingEvent = skipEvent;
    _animationController.reset();
    _trueValue = initialValue;
  }

  T get trueValue => _trueValue;

  void dispose() {
    _curvedAnimation.dispose();
    _animationController.dispose();
  }
}
