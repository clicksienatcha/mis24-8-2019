import React, { Component } from 'react';

import { ImageBackground  ,Text, StyleSheet, View, ListView, TextInput, ActivityIndicator, Alert,ScrollView,RefreshControl  } from 'react-native';
import { Container, Row, Col } from 'reactstrap';

export default class HomePage extends Component {
 
  static navigationOptions = {
    title: 'MOACMIS',
    headerTitleStyle: {
      textAlign: 'center',

      flexGrow: 1,
      alignSelf: 'center',
    },
    headerStyle: {
      backgroundColor: '#003171',

    },
    headerTintColor: 'white',

  };

  constructor(props) {

    super(props);

    this.state = {
      refreshing: false,
      isLoading: true,
      text: '',
    
    }

    this.arrayholder = [] ;
  }
 
  _onRefresh = () => {
    this.setState({refreshing: true});
    this.componentDidMount();
    this.setState({refreshing: false});
  }

  async componentDidMount() {
 
    console.log('เริ่มแอพ...');
    
        var that = this;
        var date = new Date().getDate(); //Current Date
        var month = new Date().getMonth() + 1; //Current Month
        var year = new Date().getFullYear(); //Current Year
        var hours = new Date().getHours(); //Current Hours
        var min = new Date().getMinutes(); //Current Minutes
        var sec = new Date().getSeconds(); //Current Seconds

    return fetch('http://192.168.43.193/test/getjson_product.php')
      .then((response) => response.json())
      .then((responseJson) => {
        let ds = new ListView.DataSource({rowHasChanged: (r1, r2) => r1 !== r2});
        this.setState({
          time: hours,
          isLoading: false,
          dataSource: ds.cloneWithRows(responseJson),
        }, function() {

          // In this block you can do something with new state.
          this.arrayholder = responseJson ;

        });
      })
      .catch((error) => {
        console.error(error);
      });
      
  }



  itemSelected = (category)=>{
    // console.log('เลือกแล้ว',category.group_n);
     //alert(category.id)
    
      this.props.navigation.navigate('Product',category);
     
    // this.props.navigation.navigate('Product');
   }
  
   SearchFilterFunction(text){
     
     const newData = this.arrayholder.filter(function(item){
         const itemData = item.name.toUpperCase()
         const textData = text.toUpperCase()
         return itemData.indexOf(textData) > -1
     })
     this.setState({
         dataSource: this.state.dataSource.cloneWithRows(newData),
         text: text
     })
 }
 
  ListViewItemSeparator = () => {
    return (
      <View
        style={{
          height: .5,
          width: "100%",
          backgroundColor: "#000",
        }}
      />
    );
  }
 
  onRefresh() {
    
       const ds = new ListView.DataSource({rowHasChanged: (r1, r2) => r1 !== r2});
    
       this.setState({dataSource : ds.cloneWithRows([ ]),text:''})
    
       this.componentDidMount();
     
     }

  render() {

    var myloop = [];

    if (this.state.isLoading) {
      return (
        <View style={{flex: 1, paddingTop: 20}}>
          <ActivityIndicator />
        </View>
      );
    }
    const {navigate} = this.props.navigation;
   

    return (
     
      <ImageBackground  source={require('../assets/img/694.jpg')} style={styles.backgroundImage} >
      
      <View style={styles.MainContainer}>
     
            <TextInput
             
             style={styles.TextInputStyleClass}
             onChangeText={(text) => this.SearchFilterFunction(text)}
             value={this.state.text}
             underlineColorAndroid='transparent'
             placeholder="ค้นหาตอนนี้"
              />
              
              <ListView
              style={styles.list}
                dataSource={this.state.dataSource}
       
                renderSeparator= {this.ListViewItemSeparator}
       
                renderRow={(rowData) => 
                
                <Text
                  style={styles.rowViewContainer} 
                  onPress={()=>this.itemSelected(rowData)}
                   >
                 <Text>{rowData.name}</Text>
                 
                </Text>
                
                }
                refreshControl={
            <RefreshControl
              refreshing={this.state.refreshing}
              onRefresh={this.onRefresh.bind(this)}
            />
          }
                enableEmptySections={true}
      
                style={{marginTop: 10}}
       
              />
             
            </View>
           </ImageBackground >
    );
  }
}
 
const styles = StyleSheet.create({
 
 MainContainer :{

  justifyContent: 'center',
  flex:1,
  margin: 7,
 
  },
 
  warning:{
    color:'red'
  },

  backgroundImage: {
    flex: 1,
    resizeMode: 'cover', // or 'stretch'
  },

  list:{
    backgroundColor : "#FFFFFF"
  },

 rowViewContainer: {
  // fontSize: 17,
  justifyContent: 'center',
   padding: 10,
   backgroundColor : "#FFFFFF",
   opacity:0.9,
  },

  head: {
    textAlign: 'center', // <-- the magic
    fontWeight: 'bold',
    fontSize: 18,
    marginTop: 0,
    width: 200,
    //backgroundColor: 'yellow',
    },

    left: {
      fontSize: 16,
      width: '50%',
     },
     right: {
      fontSize: 16,
      width: '50%',
     },
     note: {
      textAlign: 'right',
      fontSize: 12,
      color:'blue',
      
     },

  TextInputStyleClass:{
        
   textAlign: 'center',
   
   height: 40,
   borderWidth: 1,
   borderColor: '#009688',
   borderRadius: 7 ,
   backgroundColor : "#FFFFFF"
        
   }
 
});