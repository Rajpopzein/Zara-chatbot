# This files contains your custom actions which can be used to run
# custom Python code.
#
# See this guide on how to implement these action:
# https://rasa.com/docs/rasa/custom-actions


# This is a simple example for a custom action which utters "Hello World!"

# from typing import Any, Text, Dict, List
#
# from rasa_sdk import Action, Tracker
# from rasa_sdk.executor import CollectingDispatcher
#
#
# class ActionHelloWorld(Action):
#
#     def name(self) -> Text:
#         return "action_hello_world"
#
#     def run(self, dispatcher: CollectingDispatcher,
#             tracker: Tracker,
#             domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
#
#         dispatcher.utter_message(text="Hello World!")
#
#         return []
# actions/actions.py

# from rasa_sdk import Action
# from rasa_sdk.executor import CollectingDispatcher

# class ActionProvideDownloadLink(Action):

#     def name(self) -> str:
#         return "action_provide_download_link"

#     def run(self, dispatcher: CollectingDispatcher, tracker, domain):
#         download_url = "https://drive.usercontent.google.com/download?id=1RmURQ2OdS28nt8utWMZ9WNMd_TVB7OhU&export=download&authuser=0&confirm=t&uuid=288800af-ebc6-439f-a5a0-0aedd8e0ee58&at=APZUnTUJ0zVstFMGUqsHcL8I12RO:1718627031956"
#         dispatcher.utter_message(text=f"Click [here]({download_url}) resume!")
#         return []
