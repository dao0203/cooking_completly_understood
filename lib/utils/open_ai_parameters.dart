Map<String, dynamic> getOpenAIParameters(String messages) => {
      'model': 'gpt-3.5-turbo',
      'messages': [
        {'role': 'user', 'content': messages}
      ]
    };
