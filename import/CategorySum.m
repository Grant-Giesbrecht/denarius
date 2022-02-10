classdef CategorySum < handle
	properties
		groceries
		dining
		work_important
		miscl
		one_off
		date_range
	end
	methods
		function obj = CategorySum()
			obj.groceries = 0;
			obj.dining = 0;
			obj.work_important = 0;
			obj.miscl = 0;
			obj.one_off = 0;
			obj.date_range = "";
		end
		
		function groc(obj, n)
			obj.groceries = obj.groceries + n;
			displ("Groceries total: $", obj.groceries);
		end
		
		function dine(obj, n)
			obj.dining = obj.dining + n;
			displ("Dining total: $", obj.dining);
		end
		
		function imp(obj, n)
			obj.work_important = obj.work_important + n;
			displ("Work/Important total: $", obj.work_important);
		end
		
		function misc(obj, n)
			obj.miscl = obj.miscl + n;
			displ("Misc. total: $", obj.miscl);
		end
		
		function one(obj, n)
			obj.one_off = obj.one_off + n;
			displ("One-Off total: $", obj.one_off);
		end
		
		function show(obj)
% 			displ("Groceries total: $", obj.groceries);
% 			displ("Dining total: $", obj.dining);
% 			displ("Work/Important total: $", obj.work_important);
% 			displ("Misc. total: $", obj.miscl);
% 			displ("One-Off total: $", obj.one_off);
			
			mt = MTable;
			mt.row(["Category", "Total ($)"]);
			mt.row(["Groceries", obj.groceries]);
			mt.row(["Dining", obj.dining]);
			mt.row(["Work/Important", obj.work_important]);
			mt.row(["Misc.", obj.miscl]);
			mt.row(["One-Off", obj.one_off]);
			
			displ(mt.str());
		end
	end
end