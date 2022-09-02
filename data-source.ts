import "reflect-metadata";
    import { DataSource } from "typeorm";
    import { User } from "./entity/User";
    import { AuditTrail } from "./entity/AuditTrail";
    import { BatchDetails } from "./entity/BatchDetails";
    import { BankInfo } from "./entity/BankInfo";
    import { CreatedTokens } from "./entity/CreatedTokens";
    import { IndentRequest } from "./entity/IndentRequest";
    import { LiquidityManagement } from "./entity/LiquidityManagement";
    import { Notifications } from "./entity/Notification";
    import { OrgUsers } from "./entity/OrgUsers";
    import { Permission } from "./entity/Permission";
    import { PSOInfo } from "./entity/PSOInfo";
    import { QCYMTransaction } from "./entity/QCYMTransaction";
    import { RecallRequest } from "./entity/RecallRequest";
    import { Role } from "./entity/Role";
    import { RolePermission } from "./entity/RolePermission";
    import { RuleCheck } from "./entity/RuleCheck";
    import { SystemTokens } from "./entity/SystemTokens";
    import { TokenRequest } from "./entity/TokenRequest";
    import { TokenType } from "./entity/TokenType";
    import { Transaction } from "./entity/Transaction";
    import { TransactionTokenMapping } from "./entity/TransactionTokenMapping";
    import { UserRole } from "./entity/UserRole";
    import { UserToken } from "./entity/UserToken";
    import { Wallet } from "./entity/Wallet";
    
    export const AppDataSource = new DataSource({
      type: "mariadb",
      host: "localhost",
      port: 3306,
      username: "root",
      password: "Password123!",
      database: "cbdc",
      synchronize: false,
      logging: true,
      entities: [
        User,
        AuditTrail,
        BatchDetails,
        BankInfo,
        CreatedTokens,
        IndentRequest,
        LiquidityManagement,
        Notifications,
        OrgUsers,
        Permission,
        PSOInfo,
        QCYMTransaction,
        RecallRequest,
        Role,
        RolePermission,
        RuleCheck,
        SystemTokens,
        TokenRequest,
        TokenType,
        Transaction,
        TransactionTokenMapping,
        UserRole,
        UserToken,
        Wallet,
      ],
      migrations: [],
      subscribers: [],
});
