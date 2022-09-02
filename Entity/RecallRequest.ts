import { Entity, Column , PrimaryColumn} from "typeorm"

@Entity({name:"recall_request", synchronize: true})
export class RecallRequest {
    @PrimaryColumn({type: "text"})
    id: string
    
    @Column({type: "text"})
    doc_type: string
    
    @Column({ type: "timestamp", precision: 6, nullable: false })
    creation_timestamp: Date

    @Column({ type: "timestamp", precision: 6, nullable: false })
    updated_timestamp: Date

    @Column({type: "int"})
    processed_count: number

    @Column({type: "text"})
    maker_remarks: string

    @Column({type: "text"})
    checker_remarks: string

    @Column({type: "text"})
    status: string

    @Column({type: "text"})
    filters: string

    @Column({type: "int"})
    total_count: number

    @Column({type: "decimal"})
    notify_rtsp: boolean
}


