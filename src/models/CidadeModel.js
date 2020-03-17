import CidadeDao from '../dao/CidadeDao';

export default class CidadesModel{
    static store(cidade){
        return CidadeDao.upsert(cidade).catch((err)=>{
            const e = err.errors[0];
            return `profile.error.${e.validatorKey}.${e.path}`;
        });
    }


}