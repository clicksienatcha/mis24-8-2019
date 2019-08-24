import React, { Component } from 'react';

import { ImageBackground ,FlatList , StyleSheet, View, ListView, TextInput, ActivityIndicator, Alert,ScrollView,RefreshControl  } from 'react-native';
import { Container,Row,Col, Header, Content, Card, CardItem, Text, Body } from "native-base";
export default class ProductPage extends Component {
 
  static navigationOptions = ({navigation}) =>{
    return {
        title: navigation.getParam('name'),
      //  title: 'ระดับน้ำ RealTime ภาคเหนือตอนบน',
        headerTitleStyle: {
          textAlign: 'left',
    
          flexGrow: 1,
          alignSelf: 'center',
        },
        headerStyle: {
          backgroundColor: '#003171',
    
        },
        headerTintColor: 'white',
    }
}


  

  constructor(props) {

    super(props);

    this.state = {
      refreshing: false,
      isLoading: true,
      text: '',
      name: this.props.navigation.state.params,
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
    let data = this.props.navigation.state.params;
        var that = this;
        var date = new Date().getDate(); //Current Date
        var month = new Date().getMonth() + 1; //Current Month
        var year = new Date().getFullYear(); //Current Year
        var hours = new Date().getHours(); //Current Hours
        var min = new Date().getMinutes(); //Current Minutes
        var sec = new Date().getSeconds(); //Current Seconds

    return fetch('http://192.168.43.193/test/getjson_nameproduct.php?id='+data.id)
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
    //  alert(category.id)
    //  if(category.id==1){
    //   this.props.navigation.navigate('Product',category);
    //  }
    // this.props.navigation.navigate('Product',category);
   }
  
   SearchFilterFunction(text){
     
     const newData = this.arrayholder.filter(function(item){
         const itemData = item.station_id.toUpperCase()
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
     
      <Container>
        <ImageBackground  source={require('../assets/img/694.jpg')} style={styles.backgroundImage} >
        
        <Content padder>
          
        <View style={styles.MainContainer}>
     
            
              
              <ListView
              style={styles.list}
                dataSource={this.state.dataSource}
       
                renderSeparator= {this.ListViewItemSeparator}
       
                renderRow={(rowData) => 
                
                
                  
                  <View >
                  
                  
                  <Row style={(rowData.head!=null?styles.rowbox:styles.rownone)}>
                    <Col style={styles.colhead}><Text style={[{color:'white',fontWeight: 'bold',
    fontSize: 18,}]}>{(rowData.head!=""?rowData.head:'')}</Text></Col>
                  </Row>
                  <Row style={styles.row}>
                    <Col style={styles.colleft}><Text>{rowData.subname}</Text></Col>
                    <Col style={styles.colright}><Text>{rowData.sublist_value}</Text></Col>
                  </Row>
                  
                  
                </View>
             
                
                }
            
           
       
              />
             
           
          
          </View>
        </Content>
        </ImageBackground>
      </Container>
    );
  }
}
 
const styles = StyleSheet.create({
 
 MainContainer :{

  justifyContent: 'center',
  //flex:1,
  // margin: 7,
 
  },
  datalist:{
   // backgroundColor : "#FFFFFF"
  },
  rownone:{
    display:'none'
  },

  rowbox:{
    color:'white',
   
    alignItems: 'center',
    flex: 1,
    padding:20,
    textAlign: 'center', // <-- the magic
    fontWeight: 'bold',
    fontSize: 18,
    backgroundColor: "#317589",
    marginBottom: '-5%',
    borderBottomColor: 'black',
    borderBottomWidth: 3
  },

  colhead:{
    
    color:'white',

  },


  colleft:{
    
    padding: 5,
    width:'70%',
  },
  colright:{
    padding: 5,
    width:'30%',
    textAlign: 'right',
  },
  warning:{
    color:'red'
  },

  backgroundImage: {
    flex: 1,
    resizeMode: 'cover', // or 'stretch'
  },
  row:{
    borderColor:'red',
  },
  list:{
    
     backgroundColor : "white",
     borderColor:'#FFFFFF',
     
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
  //  borderWidth: 1,
  //  borderColor: '#009688',
  //  borderRadius: 7 ,
  //  backgroundColor : "#FFFFFF"
        
   }
 
});