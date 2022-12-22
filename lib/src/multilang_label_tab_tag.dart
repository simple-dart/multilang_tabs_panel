import 'package:simple_dart_multilang_label/simple_dart_multilang_label.dart';
import 'package:simple_dart_tabs_panel/simple_dart_tabs_panel.dart';
import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

class MultilangLabelTabTag extends AbstractTabTag {
  MultilangLabel multilangLabel = MultilangLabel();

  MultilangLabelTabTag(Component tabContent) : super('TabTag') {
    add(multilangLabel);
    tabContentFactory = () => tabContent;
  }

  @override
  String get caption => multilangLabel.langKey;

  @override
  set caption(String newVal) {
    multilangLabel.langKey = newVal;
  }
}
