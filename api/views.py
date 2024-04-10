from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view

# Create your views here.
@api_view(['POST'])
def get_testcases(request):
    test_cases={"tests":[{"title":"Open google.com",
             "steps":[["Open Browser","https://google.com","Firefox"],
                      ["Sleep","2s"],
                      ["Close Browser"]]}]}
    return Response(test_cases)
