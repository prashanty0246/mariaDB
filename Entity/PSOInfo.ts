import { Entity, Column , PrimaryColumn} from "typeorm"

@Entity({name:"pso_info", synchronize: true})
export class PSOInfo {
    @PrimaryColumn({type: "int"})
    org_id: number
    
    @Column({type: "text"})
    end_points: string

    @Column({type: "int"})
    member_id: number

    @Column({type: "text"})
    signer_cert: string

    @Column({type: "text"})
    encrypter_cert: string

    @Column({type: "text"})
    ssl_cert: string

}


