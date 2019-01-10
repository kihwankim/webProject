package app;

import database.dataBaseList;
import list.LinkedList;
import timeTableTree.AdjacencyTreeNode;
import timeTableTree.MakeTheNodeList;
import timeTableTree.TimeTableTree;

public class AppControllerForWeb {

	private int _numberOfSubjects;
	private String[] _subjects;
	private LinkedList<String>[] _professor;
	private MakeTheNodeList<AdjacencyTreeNode> _makeTheNodeList;
	private dataBaseList _dataBaseList;
	private TimeTableTree<AdjacencyTreeNode> _timeTableTree;
	private String _emptyDay;

	private void setEmptyDay(String emptyDay) {
		this._emptyDay = emptyDay;
	}

	private String emptyDay() {
		return this._emptyDay;
	}

	private void setTimeTableTree(TimeTableTree<AdjacencyTreeNode> tree) {
		this._timeTableTree = tree;
	}

	private TimeTableTree<AdjacencyTreeNode> timeTableTree() {
		return this._timeTableTree;
	}

	private void setDataBaseList(dataBaseList dataBaseList) {
		this._dataBaseList = dataBaseList;
	}

	private dataBaseList dataBaseList() {
		return this._dataBaseList;
	}

	private void setMakeTheNodeList(MakeTheNodeList<AdjacencyTreeNode> nodeList) {
		this._makeTheNodeList = nodeList;
	}

	private MakeTheNodeList<AdjacencyTreeNode> makeTheNodeList() {
		return this._makeTheNodeList;
	}

	private void setProfessor(LinkedList<String>[] str) {// 교수님 명 입력받은곳
		this._professor = str;
	}

	private LinkedList<String>[] professor() {
		return this._professor;
	}

	private int numberOfSubjects() {
		return this._numberOfSubjects;
	}

	private void setNumberOfSubject(int subs) {
		this._numberOfSubjects = subs;
	}

	private String[] subjects() {
		return this._subjects;
	}

	private void setSubjects(String[] _Subjects) {
		this._subjects = _Subjects;
	}

	private LinkedList<AdjacencyTreeNode[]> outputOfNodeList() {
		this.setDataBaseList(new dataBaseList("컴퓨터공학과"));
		this.setMakeTheNodeList(new MakeTheNodeList<AdjacencyTreeNode>(this.dataBaseList().dataBase(), this.subjects(),
				this.numberOfSubjects()));
		this.makeTheNodeList().makeTheListAndAddLevel();
		this.makeTheNodeList().swapFromTheChoice(this.professor());
		return this.makeTheNodeList().treeList();
	}

	public LinkedList<LinkedList<AdjacencyTreeNode>> outputOfTree() {
		this.setTimeTableTree(new TimeTableTree<AdjacencyTreeNode>(this.outputOfNodeList(), this.numberOfSubjects()));
		this.timeTableTree().useAllOfRoot(this.emptyDay());
		return this.timeTableTree().listOfpaths();
	}

	public AppControllerForWeb(int numberOfSubject, String[] subjects, LinkedList<String>[] aList, String emptyDay) {// 객체받아오기
		this.setNumberOfSubject(numberOfSubject);
		this.setSubjects(subjects);// 과목명 입력받기
		this.setProfessor(aList); // 교수님 명 입력 받음
		this.setEmptyDay(emptyDay);// 공강 날자 설정
	}
}
