import 'package:flutter/material.dart';

void main() => runApp(await());

DateTime newDateTime = await showRoundedDatePicker(
                        ...
                        builderDay:
                            (DateTime dateTime, bool isCurrentDay, bool isSelected, TextStyle defaultTextStyle) {
                          if (isSelected) {
                            return Container(
                              decoration: BoxDecoration(color: Colors.orange[600], shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  dateTime.day.toString(),
                                  style: defaultTextStyle,
                                ),
                              ),
                            );
                          }

                          if (dateTime.day == 10) {
                            return Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.pink[300], width: 4), shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  dateTime.day.toString(),
                                  style: defaultTextStyle,
                                ),
                              ),
                            );
                          }
                          if (dateTime.day == 12) {
                            return Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.pink[300], width: 4), shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  dateTime.day.toString(),
                                  style: defaultTextStyle,
                                ),
                              ),
                            );
                          }

                          return Container(
                            child: Center(
                              child: Text(
                                dateTime.day.toString(),
                                style: defaultTextStyle,
                              ),
                            ),
                          );
                        });