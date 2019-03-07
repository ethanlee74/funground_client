import 'package:react/react.dart';

class MyComponent extends Component {
  @override
  void componentWillMount() {}
  
  @override
  void componentDidMount() {}
  
  @override
  void componentWillReceiveProps(Map nextProps) {}
  
  @override
  void componentWillUpdate(Map nextProps, Map nextState) {}
  
  @override
  void componentDidUpdate(Map prevProps, Map prevState) {}
  
  @override
  void componentWillUnmount() {}
  
  @override
  bool shouldComponentUpdate(Map nextProps, Map nextState) => true;
  
  @override
  Map getInitialState() => {};
  
  @override
  Map getDefaultProps() => {};
  
  @override
  render() => div({}, props['text']);
}
