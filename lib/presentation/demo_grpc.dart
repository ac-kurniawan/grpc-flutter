import 'package:flutter/material.dart';
import 'package:flutter_demo/generated/GetUserMessageV1.pb.dart';
import 'package:flutter_demo/generated/UserServiceV1.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class DemoGrpc extends StatefulWidget {
  const DemoGrpc({Key? key}) : super(key: key);

  @override
  State<DemoGrpc> createState() => _DemoGrpcState();
}

class _DemoGrpcState extends State<DemoGrpc> {
  String _response = 'No response yet';
  final channel = ClientChannel('10.0.2.2',
      port: 8000,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure()));

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo gRPC'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('gRPC Get Card Details'),
            Text('response: $_response'),
            OutlinedButton(
                onPressed: () async {
                  final data = GetUsersMessageV1();
                  final client = UserServiceV1Client(channel,
                      options:
                          CallOptions(timeout: const Duration(seconds: 30)));

                  final response = await client.getUser(data);

                  setState(() {
                    _response = response.toString();
                  });
                },
                child: const Text("Send request")),
          ],
        ),
      ),
    );
  }
}
