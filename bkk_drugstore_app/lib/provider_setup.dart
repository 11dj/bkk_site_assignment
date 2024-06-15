import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'core/viewmodels/viewmodels.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<SiteViewModel>(create: (context) => SiteViewModel()),
];
