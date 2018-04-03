/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */
'use strict';//This enables Strict Mode, which adds improved error handling and
//disables some less-than-ideal JavaScript language features.
//In simple terms, it makes JavaScript better!
import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Text,
  View,
  NativeModules
} from 'react-native';

// const instructions = Platform.select({
//   ios: 'Press Cmd+R to reload,\n' +
//     'Cmd+D or shake for dev menu',
//   android: 'Double tap R on your keyboard to reload,\n' +
//     'Shake or press menu button for dev menu',
// });


type Props = {};
let CalendarManager = NativeModules.CalendarManager;
let CalendarManager2 = NativeModules.CalendarManager2;

export default class App extends Component<Props> {

  //objective case
  //return an array
  // async updateEvents() {
  //   try {
  //     var events = await CalendarManager.findEvents();
  //     this.setState({events});
  //   } catch (e) {
  //
  //     console.error(e);
  //   }
  // }

  async afnetworkingTest() {
    try {
      var events = await CalendarManager.AFNetworkingTest();

      console.log(events);
      this.setState({events});
    } catch (e) {

      console.error(e);
    }
  }

  async afnetworkingPostTest() {
    try {
      var events = await CalendarManager.AFNetworkingPostTest();

      console.log(events);
      this.setState({events});
    } catch (e) {

      console.error(e);
    }
  }

  render() {
    // let date1 = new Date('05 October 2011 14:48 UTC');
    //test get for afnetworking
    // this.afnetworkingTest();
    //test post for afnetworking
    // this.afnetworkingPostTest();
    //test passing event to a swift method
    // CalendarManager2.addEvent('--------------------------------', '4 Privet Drive', date1.getTime());

    //test call back for swift
    // CalendarManager2.callbackMethod((err,r) => console.log(r));

    //test passing objc to AFNetworkingIntoSwift to react
    CalendarManager2.testAFNetworkingGet((err,r) => {
      // console.log("---------------test--------------");
      console.log(r)

      }
    );

    // this.updateEvents();
    //
    // CalendarManager.addEvent('Birthday Party', '4 Privet Drive, Surrey');
    // let date = new Date('05 October 2011 14:48 UTC');
    // CalendarManager.addTimeEvent(
    //   'Birthday Party',
    //   '4 Privet Drive, Surrey',
    //   date.getTime()
    // );

    // CalendarManager.addEvent('Birthday Party', '4 Privet Drive, Surrey');

    return React.createElement(Text, {style: styles.description}, "Search for houses to buy!");
  }

  // render() {
  //   return (
  //     <View style={styles.container}>
  //       <Text style={styles.welcome}>
  //         Welcome to React Native!
  //       </Text>
  //       <Text style={styles.instructions}>
  //         To get started, edit App.js
  //       </Text>
  //       <Text style={styles.instructions}>
  //         {instructions}
  //       </Text>
  //     </View>
  //   );
  // }
}

const styles = StyleSheet.create({
  description: {
    fontSize: 18,
    textAlign: 'center',
    color: '#656565',
    marginTop: 65,
  },
});

// const styles = StyleSheet.create({
//   container: {
//     flex: 1,
//     justifyContent: 'center',
//     alignItems: 'center',
//     backgroundColor: '#F5FCFF',
//     paddingTop:20
//   },
//   welcome: {
//     fontSize: 20,
//     textAlign: 'center',
//     margin: 10,
//   },
//   instructions: {
//     textAlign: 'center',
//     color: '#333333',
//     marginBottom: 5,
//   },
// });
