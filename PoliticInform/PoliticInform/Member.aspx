﻿<%@ Page Title="Member" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="PoliticInform.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>국회의원의 정보를 확인할 수 있는 회원 페이지입니다. </p>

    <p>
        이름 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <asp:Button ID="Button1" runat="server" Text="검색" />
    </p>
    <p>
        정당 <asp:DropDownList ID="MemberParty" runat="server" EnableTheming="True" Width="180px">
            <asp:ListItem Selected="False">전체</asp:ListItem>
            <asp:ListItem Selected="False">국민의당</asp:ListItem>
            <asp:ListItem Selected="False">국민의힘</asp:ListItem>
            <asp:ListItem Selected="False">기본소득당</asp:ListItem>
            <asp:ListItem Selected="False">더불어민주당</asp:ListItem>
            <asp:ListItem Selected="False">더불어시민당</asp:ListItem>
            <asp:ListItem Selected="False">무소속</asp:ListItem>
            <asp:ListItem Selected="False">미래한국당</asp:ListItem>
            <asp:ListItem Selected="False">시대전환</asp:ListItem>
            <asp:ListItem Selected="False">열린민주당</asp:ListItem>
            <asp:ListItem Selected="False">정의당</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        지역 <asp:DropDownList ID="MemberArea" runat="server" Width="180px">
            <asp:ListItem>전체</asp:ListItem>
            <asp:ListItem>비례대표</asp:ListItem>
            <asp:ListItem>강원</asp:ListItem>
            <asp:ListItem>경기</asp:ListItem>
            <asp:ListItem>경남</asp:ListItem>
            <asp:ListItem>경북</asp:ListItem>
            <asp:ListItem>광주</asp:ListItem>
            <asp:ListItem>대구</asp:ListItem>
            <asp:ListItem>대전</asp:ListItem>
            <asp:ListItem>부산</asp:ListItem>
            <asp:ListItem>서울</asp:ListItem>
            <asp:ListItem>세종</asp:ListItem>
            <asp:ListItem>울산</asp:ListItem>
            <asp:ListItem>인천</asp:ListItem>
            <asp:ListItem>전남</asp:ListItem>
            <asp:ListItem>전북</asp:ListItem>
            <asp:ListItem>제주</asp:ListItem>
            <asp:ListItem>충남</asp:ListItem>
            <asp:ListItem>충북</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        위원회 <asp:DropDownList ID="MemberCommittee" runat="server" Width="180px">
            <asp:ListItem>전체</asp:ListItem>
            <asp:ListItem>과학기술정보방송통신</asp:ListItem>
            <asp:ListItem>교육</asp:ListItem>
            <asp:ListItem>국무총리(김부겸)임명동의에 관한 인사청문 특별</asp:ListItem>
            <asp:ListItem>국방</asp:ListItem>
            <asp:ListItem>국토교통</asp:ListItem>
            <asp:ListItem>국회운영</asp:ListItem>
            <asp:ListItem>기획재정</asp:ListItem>
            <asp:ListItem>농림축산식품해양수산</asp:ListItem>
            <asp:ListItem>대법관(천대엽)임명동의에 관한 인사청문 특별</asp:ListItem>
            <asp:ListItem>문화체육관광</asp:ListItem>
            <asp:ListItem>법제사법</asp:ListItem>
            <asp:ListItem>보건복지</asp:ListItem>
            <asp:ListItem>산업통상자원중소벤처기업</asp:ListItem>
            <asp:ListItem>여성가족</asp:ListItem>
            <asp:ListItem>예산결산특별</asp:ListItem>
            <asp:ListItem>외교통일</asp:ListItem>
            <asp:ListItem>윤리특별</asp:ListItem>
            <asp:ListItem>정무</asp:ListItem>
            <asp:ListItem>정보</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        성별 
        전체 <asp:RadioButton ID="All" runat="server" />남 <asp:RadioButton ID="Male" runat="server" />여<asp:RadioButton ID="Female" runat="server" />
        
    </p>

    <p>
        연령 <asp:DropDownList ID="MemberAge" runat="server" Width="180px">
            <asp:ListItem>30세 미만</asp:ListItem>
            <asp:ListItem>31~40세</asp:ListItem>
            <asp:ListItem>41~50세</asp:ListItem>
            <asp:ListItem>51~60세</asp:ListItem>
            <asp:ListItem>61~70세</asp:ListItem>
            <asp:ListItem>71세 이상</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        
        당선횟수 <asp:DropDownList ID="MemberElectedTimes" runat="server" Width="180px">
            <asp:ListItem>전체</asp:ListItem>
            <asp:ListItem>1선</asp:ListItem>
            <asp:ListItem>2선</asp:ListItem>
            <asp:ListItem>3선</asp:ListItem>
            <asp:ListItem>4선</asp:ListItem>
            <asp:ListItem>5선</asp:ListItem>
            <asp:ListItem>6선</asp:ListItem>
            <asp:ListItem>7선</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="MemberConfirm" runat="server" Text="확인" /><asp:Button ID="MemberReset" runat="server" Text="검색초기화" />
    </p>
</asp:Content>
