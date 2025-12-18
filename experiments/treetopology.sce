//Experiment No.5
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Dr. T. Subbulaskhmi, Professor, 
//School of Computing Science and Engineering, VIT University Chennai 
//using the NARVAL examples of Scilab for Network Topology Creation  
//The Operating System used for writing the code found in this file is Windows 8
//SCILAB version 5.5.2 and NARVAL toolbox version 3.1
//Program to 1. create and Display Tree Topology 2. Colour the nodes 3. Display the node number and edge number 4. Display the number of nodes and edges 

clear;
clc;
NameOfNetwork='Tree Topology';// graph name
NumberOfNodes=7;//no. of nodes
//every edge has head and tail.
EndingNodesOfEdge=[1 1 2 2 3 3];// tail of eatch edge, this is a node from a edge or link is originating 
StartNodesOfEdge=[2 3 4 5 6 7];//head of each edge,this is a node where edge or link is terminating 
XCoordinatesOfNodes=[500 300 700 200 400 600 800];// x-coordinate of each node
YCoordinatesOfNodes=[950 800 800 700 700 700 700];//y-coordinate of each node
[TopologyGraph]=NL_G_MakeGraph(NameOfNetwork,NumberOfNodes,EndingNodesOfEdge,StartNodesOfEdge,XCoordinatesOfNodes,YCoordinatesOfNodes)//application of NL_G_MakeGraph
WindowNumber=1;//window index
GraphVisualize=NL_G_ShowGraphN(TopologyGraph,WindowNumber);//graph visualization
xtitle("Tree Topology","X-Nodes","Y-Nodes");
NodeColor=3; // Node Colour 2:[Blue],3:[Green], 5:[Red]
BorderThickness=10; // Node Border thickness
NodeDiameter=25; //Node diameter 
WindowNumber=2;//window index
NumberOfNodes=[1 3 5];//list of nodes

[NodeHighlight,Nodes]=NL_G_HighlightNodes(TopologyGraph,NumberOfNodes,NodeColor,BorderThickness,NodeDiameter,WindowNumber);// Highlight the specified nodes
xtitle("Node Highlight","X-Nodes","Y-Nodes");
WindowNumber=3; //Graph Window Number
[VisualizeNodesEdges] = NL_G_ShowGraphNE(TopologyGraph,WindowNumber);// Visualize the Graph along with indices for Nodes and Edges
[ExtractNode,ExtractEdge]=NL_G_GraphSize(TopologyGraph);//Extract the number of nodes and edges
disp(ExtractNode,ExtractEdge); //display the number of nodes and edges 
xtitle("Indices for Nodes and Edges","X-Nodes","Y-Nodes");
