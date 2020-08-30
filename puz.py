from tkinter import *
import random 
class puzir(Frame):
    def __init__(self, master):
        super().__init__(master)
        self.grid()
        self.create_widgets()
 
    def create_widgets_puzir(self):
        Label(self, text="Ч").grid(row=1,column=0, sticky=W)
        Label(self, text="Ч").grid(row=2,column=0, sticky=W)
        self.num_1=Entry(self, width=10)
        self.num_2=Entry(self, width=10)
        self.num_1.grid(row=1, column=0)
        self.num_2.grid(row=2, column=0)
        Button(self, text="Сортировка", command=self.addition, width=3).grid(row=3, column=0, sticky=W)
        Button(self, text="Сортировка быстрая", command=self.substraction, width=3).grid(row=3, column=0)
        Button(self, text="Рандомная сортировка", command=self.multiplication, width=3).grid(row=4, column=0, sticky=W)
        Button(self, text="/", command=self.division, width=3).grid(row=4, column=0)
        self.answer=Text(self, width=30, height=2, wrap=WORD)
        self.answer.grid(row=5, column=0, sticky=W)
 
    def addition(self):

 
    def substraction(self):
 
 
    def multiplication(self):
        try:
            self.answ=int(self.num_1.get())*int(self.num_2.get())
            self.answ=str(self.num_1.get())+"*"+str(self.num_2.get())+"="+str(self.answ)

 
    def division(self):
        #Пока что пустая подпрограмма

 
    def calculate(self):
        self.answer.delete(0.0,END)
        self.answer.insert(0.0,self.answ)
        self.num_1.delete(0, END)
        self.num_2.delete(0, END)
 
root=Tk()
root.title("Пузырь")
calc=Calcul(root)
root.mainloop()
