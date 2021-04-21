from with_me_dependencies import *

#initialize cursor
cursor = db.cursor()

#welcome page
print('------Welcome to the School Portal------')

def welcome():

    user_type = input('----Select User Type (Student/Admin/Lecturer)----- \n ->')
    if 'student' in user_type.lower():
        student()
    elif 'admin' in user_type.lower():
        admin()
    elif 'lecturer' in user_type.lower():
        lecturer()
    else:
        print('---Invalid Input entered---')
        welcome()

welcome()
exit()
