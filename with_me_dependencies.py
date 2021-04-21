import mysql.connector
import mysql.connector as mysql
#connect to database
db = mysql.connect(host='localhost', user='bano', password='sql2020', database="info")
#print connection details
print(db)
#initialize cursor
cursor = db.cursor()

def coursee():
    course = input('Enter desired course: ')
    return course
def exit():
    print('---Exiting Code---')
def student():
    print('====LOADING REQUIREMENTS====')
    updateList()
    name = input('Enter Name \n -->')
    print('Welcome %s'%name)

    def students():
        todo = input('What do you want to do \n 1.Register  \n 2.Edit name \n 3.View Course \n 4.Others \n ->')
        if todo == '2':
            student()
        if todo == '1':
            register()
            students()
        if todo == '3':
            print('======================================')
            reg = input('Enter Registration Number')
            viewCourses(reg)
            print('======================================')
            viewGPA(reg)
            print('======================================')
            students()

        else:
            print('Still Building')

    students()
    updateList()
    print('====UPDATING CHANGES====')
def admin():
    todo = input('What do you want to do(type a number) \n 1. View All Students details \n 2. Others \n 3.Update Course Table \n->')
    if todo == '1':
        get_basic_details()

    elif todo == '2':
        print('--Still Building--')
        exit()

    elif todo == '3':
        updateList()
    else:
        print('--Invalid Input Entered--')
        admin()
def lecturer():
    print('====LOADING REQUIREMENTS====')
    updateList()
    name = input('Enter name \n ->')
    print('Welcome %s ' % name)
    todo = input('What do you want to do(pick a number) : \n 1.Update Name \n 2.Check Course list \n 3.Upload or Update Scores \n 4.Others \n ->')
    if todo == '2':
        # check for a course table
        course = coursee()
        course = course.lower()

        # course exists
        if tableExist(course) == True:
            print(True, ' - %s table exists' % course)
            response = input('Do you want to delete it and Create a new one (Y) or Proceed with existing one it(N) Y/N?   ')
            if 'Y' in response.upper():
                delete_table(course)
                create_course_table(course)
                populate_table(course)
                view_table(course)
            if 'N' in response.upper():
                view_table(course)

        # course doesn't exist
        else:
            print(False, " - %s table doesn't exist" % course)
            response = input('Do you want to create it Y/N?   ')
            if 'Y' in response.upper():
                create_course_table(course)
                populate_table(course)
                view_table(course)
            if 'N' in response.upper():
                exit()

    elif todo == '1':
        lecturer()

    elif todo == '3':
        uploadScores()

    else:
        print('----Still Building----')
        exit()
    updateList()
    print('====UPDATING CHANGES====')
def get_basic_details():
    # Get the basic details of the students
    get_students = 'SELECT ID,NAME,REG_NUM,DEPT,EMAIL FROM students'
    cursor.execute(get_students)
    rows = cursor.fetchall()
    # Print the basic details of the students
    print('LIST OF STUDENTS AND DETAILS')
    for row in rows:
        print(row)
def delete_table(course):
    # delete table
    print('--Deleting Table--')
    print('-----------------------------------')
    delete_table = "DROP TABLE %s" %course
    cursor.execute(delete_table)
    print('--Table Deleted--')
    print('-----------------------------------')
def create_course_table(course):
    print('--Creating Table--')
    print('-----------------------------------')
    # create table
    create_table = "CREATE TABLE %s(REG_NUM VARCHAR(20) NOT NULL, NAME TEXT NOT NULL, SCORE INT NOT NULL, PRIMARY KEY(REG_NUM))" % course
    cursor.execute(create_table)
    print('--------TABLE CREATED----------')
    print('-----------------------------------')
def populate_table(course):
    #populate = input('Do you want to populate the table(Y/N)   ')
    #if 'Y' in populate.upper():
        # get students offering the course

        reglist = "SELECT REG_NUM,NAME FROM students WHERE COURSE1 = '%s' OR COURSE2 = '%s' OR COURSE3 = '%s' OR COURSE4 = '%s' OR COURSE5 = '%s' OR COURSE6 = '%s' OR COURSE7 = '%s' OR COURSE8 = '%s' OR COURSE9 = '%s' OR COURSE10 = '%s'" % (
        course, course, course, course, course, course, course, course, course, course)
        cursor.execute(reglist)
        items = cursor.fetchall()
        for reg,nam in items:
            if dataExist(course,reg) == True:
                pass
            else:
                get_course_list = "INSERT INTO %s (REG_NUM,NAME) VALUE('%s','%s')" % (course.lower(),reg,nam)
                cursor.execute(get_course_list)
                db.commit()
        #print('====TABLE POPULATION COMPLETED=====')
def view_table(course):
    view = input('View table ? (Y/N)')
    if 'Y' in view.upper():
    # Get the basic details of the students
        print('--Loading Table--')
        print('-----------------------------------')
        get_students = 'SELECT * FROM %s' % course
        cursor.execute(get_students)
        rows = cursor.fetchall()

        # Print course details of the students
        print('------TABLE LOADED-----')
        print('LIST OF STUDENTS AND DETAILS')
        print('ID, REG_NUM , NAME , SCORE')
        for row in rows:
            print(row)
    else:
        exit()
def uploadScores():
    course = coursee()
    course = course.lower()
    if tableExist(course) == True:
        view_table(course)
        input_style = input('Input for All(1), for One(2) or some(3)')
        if input_style == '1':
            get_students = 'SELECT REG_NUM,NAME FROM %s'%course
            cursor.execute(get_students)
            rows = cursor.fetchall()
            for row, blo in rows:
                score = input('Enter Score for %s' % blo)
                score = int(score)
                upload = "UPDATE `%s` SET SCORE = %d WHERE REG_NUM = '%s'" % (course,score, row)
                cursor.execute(upload)
                db.commit()
                view_table(course)
            repeat = input('Do you want to upload for another course')
            if 'y' in repeat.lower():
                uploadScores()
        if input_style == '2':
            regNum = input('Enter regNumber of Student')
            score = input('Enter Score')
            score = int(score)

            upload = "UPDATE %s SET SCORE = %d WHERE REG_NUM = '%s'" % (course,score, regNum)
            cursor.execute(upload)
            db.commit()
            repeat = input('Do you want to upload for another course')
            if 'y' in repeat.lower():
                uploadScores()
            #view_table(course)
        if input_style == '3':
            totalNum = 'SELECT COUNT(REG_NUM) from %s WHERE (REG_NUM IS NOT NULL)' % course
            cursor.execute(totalNum)
            res = cursor.fetchall()
            for re in res:
                re = str(re)
                re = re.strip(',)')
                re = re.strip('(')
                re = int(re)
            def for_some():
                num = int(input('How many students do you want to Input for'))
                if num <= re:
                    for i in range(num):
                        regNum = input('Enter regNumber of Student %d' %(i+1))
                        score = input('Enter Score')
                        score = int(score)
                        upload = "UPDATE %s SET SCORE = %d WHERE REG_NUM = '%s'" % (course, score, regNum)
                        cursor.execute(upload)
                        db.commit()


                else:
                    print('There are not up to %d students in %s course list' % (num, course))
                    for_some()

            for_some()
            repeat = input('Do you want to upload for another course')
            if 'y' in repeat.lower():
                uploadScores()

    else:
        print(course + 'Table doesnt Exist')
def tableExist(course):
    #print('--Checking if %s exits-- ' % course)
    check_table = "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'info' AND table_name = '%s'" % course
    cursor.execute(check_table)
    answer = list(cursor.fetchall())
    answer = str(answer)
    if '1' in answer:
        return True
    else:
        return False
def confrimCourse(course):
    courseList = 'SELECT * FROM courseList'
    cursor.execute(courseList)
    courses = cursor.fetchall()
    #found
    found = 0
    for title,dept,code,unit in courses:
        if course in code:
            found = found + 1

    if found < 1:
        return False
    else:
        return True
def register():
    name = input('Enter name in full \n ->')
    reg_num = input('Enter Registration Number \n ->')
    dept = input('Enter Department (Abbreviated) \n ->')
    email = input('Enter Email \n ->')
    tot = []

    input_course(tot)
    register_students(name,reg_num,dept,email,tot)
    registration(reg_num)
    inst(reg_num,tot)

    print('Registration Complete')
def input_course(tot):
    course_num = int(input('How many Courses are you offering \n ->'))

    if course_num < 3:
        print('You can register for less than 3 courses')
        input_course(tot)
    elif course_num > 10:
        print('You cannot register for more than 10 Courses')
        input_course(tot)
    elif 3 <= course_num <= 10:
        course = 'Course1'
        available_courses()
        n = 1
        tote = []
        for i in range(course_num):
            entere(n,tot)
            n = n+1

    print(tot)
def entere(n,nop = []):
    sub1 = input('Enter the Course Name of course %d \n -> ' % n)
    sub1 = sub1.upper()
    if confrimCourse(sub1) == True:
        nop.append(sub1)
    else:
        print('Course entered doesnt exist')
        available_courses()
        entere(n,nop)
def register_students(nam,reg,dep,mail,courses = []):
    coursel = (len(courses))
    courte = ''
    court = str(courses)
    court = court.strip(",]")
    court = court.strip("[")

    print(
        'Here are your details : \n Name : %s \n Registration Number : %s \n Department : %s \n Email : %s \n Number of Courses Registered : %d\n' 
        ' Courses = %s' %(nam,reg,dep,mail,coursel,court)
    )
    confirm = input('\nAre they Correct? \n ->')
    if 'y' in confirm.lower():
        print('Registering......')
        regStudents(nam,reg,dep,mail,courses)



    else:
        print('Registration Cancelled')
def stripper(list):
    list = str(list)
    list = list.strip('[')
    list = list.strip(']')
    return list
def available_courses():
    courseList = 'SELECT * FROM courseList'
    cursor.execute(courseList)
    courses = cursor.fetchall()
    liste = []
    found = 0
    for title, dept, code, unit in courses:
        liste.append(code)
    liste = stripper(liste)
    print('These are the available Courses %s' % liste)
def registration(reg):
    reg = str(reg)
    create_data = "CREATE TABLE `%s` (  `COURSE NAME` TEXT NOT NULL, `COURSE CODE` VARCHAR(20) NOT NULL, UNIT INT, SCORE INT NOT NULL, PRIMARY KEY(`COURSE CODE`))" % reg
    cursor.execute(create_data)
    db.commit()
def inst(reg, courses = []):
    for n in courses:
        creator = "INSERT INTO `%s` (`COURSE CODE`) VALUES('%s')" %(reg,n)
        sel = "SELECT COURSE_TITLE, COURSE_UNIT FROM courselist WHERE (COURSE_CODE = '%s')" %n
        cursor.execute(sel)
        iteop = cursor.fetchall()
        it = []
        for i,t in iteop:
        #    creatorr = "INSERT INTO `%s`(`COURSE NAME`,`COURSE CODE`,UNIT) SELECT COURSE_TITLE,COURSE_UNIT FROM courselist WHERE COURSE_CODE = '%s'" % (reg, n)
            it.append(i)
            it.append(t)
            #print(' for course: %s it contains'%n , it[1] )
        #print(' for course: %s it contains' % n, it[1])
        bcreator = "INSERT INTO `%s` (`COURSE CODE`,`COURSE NAME`,`UNIT`) VALUES('%s','%s',%d)" % (reg, n,it[0],it[1])
        cursor.execute(bcreator)
        #cursor.execute(creatorr)
            #print(i,t)

        db.commit()
def viewCourses(reg):
    reg = str(reg)
    all = "SELECT * FROM `%s`" %reg
    cursor.execute(all)
    rows = cursor.fetchall()
    print('COURSE NAME | COURSE CODE | UNIT | SCORE')
    for row in rows:
        print(row)
def score(course_code, reg_num):
    selaa = 'SELCET * FROM %s'%reg_num
    cursor.execute(selaa)
    rows = cursor.fetchall()
    for row in rows:
        score = 'INSERT INTO `%s`(SCORE) SELECT SCORE FROM `%s` WHERE REG_NUM = `%s`' % (reg_num, course_code, reg_num)
        cursor.execute(score)
        db.commit()
def updateList():
    courseList = "SELECT `COURSE_CODE` FROM courselist"
    cursor.execute(courseList)
    dataa = cursor.fetchall()
    for data in dataa:
        if tableExist(data) == True:
            course = strip(data)
            populate_table(course)
            selecto = 'SELECT * FROM %s'%course
            cursor.execute(selecto)
            rows = cursor.fetchall()
            for row in rows:
                pass
        else:
            create_course_table(data)
            course = strip(data)
            populate_table(course)
def strip(row):
    row = str(row)
    row = row.strip(',)')
    row = row.strip('(')
    row = row.strip("'")

    return row
def regStudents(name,reg,dept,mail,courses=[]):
    inserta = "INSERT INTO students(NAME, REG_NUM, DEPT, EMAIL) VALUES('%s','%s','%s','%s')"%(name.upper(),reg.upper(),dept.upper(),mail)
    cursor.execute(inserta)
    for course in range (len(courses)):
        cours = 'COURSE'+str(course+1)
        #print(cours,'is : ',courses[course])
        courseInsert = "UPDATE students SET `%s` = '%s' WHERE REG_NUM = '%s'"%(cours,courses[course],reg)
        cursor.execute(courseInsert)
        db.commit()
    db.commit()
def dataExist(table,regNum):
    checkT = "SELECT COUNT(*) FROM %s WHERE REG_NUM = '%s' " %(table,regNum)
    cursor.execute(checkT)
    data = cursor.fetchall()
    data = str(data)
    if "1" in data:
        return True
def updateScores():
    crit = "SELECT REG_NUM,NAME FROM students"
    cursor.execute(crit)
    info = cursor.fetchall()
    for reg,nam in info:
        if tableExist(reg) == True:
            cri = "SELECT `COURSE CODE`,SCORE FROM `%s`"%reg
            cursor.execute(cri)
            dada = cursor.fetchall()
            for code,score in dada:
                tabli = "SELECT REG_NUM,SCORE FROM `%s` WHERE REG_NUM = '%s'"%(code,reg)
                cursor.execute(tabli)
                data = cursor.fetchall()
                for reg,sc in data:
                    #UPDATE `2204866`  SET `SCORE` = '87' WHERE `2204866`.`COURSE CODE` = 'CSC407';
                    scoreUpdate = "UPDATE `%s` SET `SCORE` = %d WHERE `COURSE CODE` = '%s'" %(reg,sc,code)
                    cursor.execute(scoreUpdate)
                    db.commit()

def viewGPA(reg):
    info = 'SELECT UNIT,SCORE FROM `%s`'%reg
    cursor.execute(info)
    data = cursor.fetchall()
    tscore = 0
    tunit = 0
    for unit,score in data:
        tunit = tunit + unit
        tscore = tscore + (unit * score)
    print('Total score is: %d'%tscore)
    print('Total Unit is : %d'%tunit)
    cgpa = float(tscore/tunit)
    print('Your GPA is %f'%cgpa)