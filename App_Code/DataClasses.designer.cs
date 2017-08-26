﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="TestDB")]
public partial class DataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InsertDepartment(Department instance);
  partial void UpdateDepartment(Department instance);
  partial void DeleteDepartment(Department instance);
  #endregion
	
	public DataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["TestDBConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<Department> Departments
	{
		get
		{
			return this.GetTable<Department>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Departments")]
public partial class Department : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _DepartmentId;
	
	private string _DepartmentCode;
	
	private string _DepartmentName;
	
	private System.Nullable<int> _CMarksSF;
	
	private int _CmarksMerit;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnDepartmentIdChanging(int value);
    partial void OnDepartmentIdChanged();
    partial void OnDepartmentCodeChanging(string value);
    partial void OnDepartmentCodeChanged();
    partial void OnDepartmentNameChanging(string value);
    partial void OnDepartmentNameChanged();
    partial void OnCMarksSFChanging(System.Nullable<int> value);
    partial void OnCMarksSFChanged();
    partial void OnCmarksMeritChanging(int value);
    partial void OnCmarksMeritChanged();
    #endregion
	
	public Department()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DepartmentId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int DepartmentId
	{
		get
		{
			return this._DepartmentId;
		}
		set
		{
			if ((this._DepartmentId != value))
			{
				this.OnDepartmentIdChanging(value);
				this.SendPropertyChanging();
				this._DepartmentId = value;
				this.SendPropertyChanged("DepartmentId");
				this.OnDepartmentIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DepartmentCode", DbType="NChar(30) NOT NULL", CanBeNull=false)]
	public string DepartmentCode
	{
		get
		{
			return this._DepartmentCode;
		}
		set
		{
			if ((this._DepartmentCode != value))
			{
				this.OnDepartmentCodeChanging(value);
				this.SendPropertyChanging();
				this._DepartmentCode = value;
				this.SendPropertyChanged("DepartmentCode");
				this.OnDepartmentCodeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DepartmentName", DbType="NChar(100) NOT NULL", CanBeNull=false)]
	public string DepartmentName
	{
		get
		{
			return this._DepartmentName;
		}
		set
		{
			if ((this._DepartmentName != value))
			{
				this.OnDepartmentNameChanging(value);
				this.SendPropertyChanging();
				this._DepartmentName = value;
				this.SendPropertyChanged("DepartmentName");
				this.OnDepartmentNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CMarksSF", DbType="Int")]
	public System.Nullable<int> CMarksSF
	{
		get
		{
			return this._CMarksSF;
		}
		set
		{
			if ((this._CMarksSF != value))
			{
				this.OnCMarksSFChanging(value);
				this.SendPropertyChanging();
				this._CMarksSF = value;
				this.SendPropertyChanged("CMarksSF");
				this.OnCMarksSFChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CmarksMerit", DbType="Int NOT NULL")]
	public int CmarksMerit
	{
		get
		{
			return this._CmarksMerit;
		}
		set
		{
			if ((this._CmarksMerit != value))
			{
				this.OnCmarksMeritChanging(value);
				this.SendPropertyChanging();
				this._CmarksMerit = value;
				this.SendPropertyChanged("CmarksMerit");
				this.OnCmarksMeritChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591