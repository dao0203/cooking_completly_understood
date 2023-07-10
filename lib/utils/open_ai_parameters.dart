Map<String, dynamic> getOpenAIParameters(String messages) => {
      'model': 'gpt-4',
      'messages': [
        {'role': 'user', 'content': messages}
      ]
    };
