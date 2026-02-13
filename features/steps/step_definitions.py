from behave import given, when, then
from src.number_rounding import round_number

@given('the number is {number}')
def step_given_number(context, number):
    context.number = number

# @given('the number is -{number}')
# def step_given_negative_number(context, number):
#     context.number = number

@given('the number of decimal places is {decimal_places}')
def step_when_decimal_places(context, decimal_places):
    context.decimal_places = decimal_places

@when('I round the number')
def step_when_round_number(context):
    context.result = round_number(float(context.number), int(context.decimal_places))

@then('result should be {result}')
def step_then_result(context, result):
    assert round_number(float(context.number), int(context.decimal_places)) == float(result)