How to use this project ?
--

1: Get and build 3 images

    docker pull wurstmeister/zookeeper
    docker pull wurstmeister/kafka
    
    docker build -f flume.Dockerfile -t myflume .

2: Check images
![此处输入图片的描述][1]

3: Start containers and check statut
![此处输入图片的描述][2]

4: Open 2 terminal for test Flume + Kafka

    echo "hello world" | nc localhost 40000
    
    bin/kafka-console-consumer.sh --bootstrap-server kafka1:9092 --from-beginning --topic flumeTopic

![此处输入图片的描述][3]

5: Create project for test spark streaming
![此处输入图片的描述][4]

6: Test 
![此处输入图片的描述][5]


  [1]: https://raw.githubusercontent.com/parisgo/docker-flume-kafka-spark/master/docs/images/20181101_1.png
  [2]: https://raw.githubusercontent.com/parisgo/docker-flume-kafka-spark/master/docs/images/20181101_2.png
  [3]: https://raw.githubusercontent.com/parisgo/docker-flume-kafka-spark/master/docs/images/20181101_3.png
  [4]: https://raw.githubusercontent.com/parisgo/docker-flume-kafka-spark/master/docs/images/20181101_4.png
  [5]: https://raw.githubusercontent.com/parisgo/docker-flume-kafka-spark/master/docs/images/20181101_5.png
