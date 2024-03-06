import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'counter_state.dart';

part 'counter_event.dart';


class CounterBloc extends Bloc<CounterEvent, CounterState> {

  CounterBloc() : super( const CounterState( )) {
    on<CounterEvent>((event, emit){
      if(event is IncrementCounter ){
        emit (state.copyWith( counter:  state.counter + 1) );
      }
      if( event is DecrementCounter ){

        emit( state.copyWith(counter: state.counter -1));
      }

    }

    );


  }
}
