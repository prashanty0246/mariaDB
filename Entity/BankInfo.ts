import { Entity, Column , PrimaryColumn} from "typeorm"

@Entity({name:"bank_info", synchronize: true})
export class BankInfo {
    @Column({type: 'text'})
    bank_name: string

    @Column({type: 'int'})
    nbin: number

    @PrimaryColumn({type:"text"})
    ifsc_code: string

    @Column({type: 'text'})
    bank_address: string

    @PrimaryColumn({type: 'int'})
    member_id: number

    @Column({type: 'text'})
    limits: string

    @Column({type: 'text'})
    rtsp_version: string

    @Column({type: 'text'})
    rtsp_endpoints: string

    @Column({type: 'text'})
    rate_limit: string

    @Column({type: 'text'})
    supported_apis: string

    @Column({type: 'int'})
    org_id: number

    @Column({type: 'text'})
    msp_id: string

    @Column({type: 'text'})
    signer_cert: string

    @Column({type: 'text'})
    encrypter_cert: string

    @Column({type: 'text'})
    ssl_cert: string
}


