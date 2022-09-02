import { Entity, Column ,PrimaryGeneratedColumn,  PrimaryColumn} from "typeorm"

@Entity({name:"rule_check", synchronize: true})
export class RuleCheck {
    @PrimaryColumn({type:"text"})
    config_key: string
    
    @Column({type:"text"})
    config_value: string

    @PrimaryColumn({type:"text"})
    config_type: string

    @Column({ type: "timestamp", precision: 6, nullable: false })
    created_at: Date

    @Column({ type: "timestamp", precision: 6, nullable: false })
    updated_at: Date
}
