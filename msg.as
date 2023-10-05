CMSG msg;
final class CMSG
{
    dictionary diff_voted, diff_updated, vote_menu, vote_showinfo, vote_startvote, vote_cooldown, vote_diffstarted, vote_notenought,
    changes, nochanges, agrunt_berserk, map_changes, barnacle_speed, zombie_uncrab, deathdrop_grenade, voltigore_explode, projectiles_speed,
    player_revive, agrunt_punchpush, agrunt_stun, squad_alerted, monster_alert, always_gib, diff_current, using_ddd, reflect_friendlyfire,
    islave_zap, diffforce_no, diffforce_yes
    ;

    void PluginInit()
    {
        string msgPath = 'Dynamic-Difficulty-Deluxe/global_messages.ini';

        /*m_FileSystem.GetKeyAndValue( m_szPath + 'diffforce_yes.txt', diffforce_yes, true );
        m_FileSystem.GetKeyAndValue( m_szPath + 'diffforce_no.txt', diffforce_no, true );
        m_FileSystem.GetKeyAndValue( m_szPath + 'reflect_friendlyfire.txt', reflect_friendlyfire, true );
        m_FileSystem.GetKeyAndValue( m_szPath + 'using_ddd.txt', using_ddd, true );
        m_FileSystem.GetKeyAndValue( m_szPath + 'always_gib.txt', always_gib, true );
        m_FileSystem.GetKeyAndValue( m_szPath + 'monster_alert.txt', monster_alert, true );
        m_FileSystem.GetKeyAndValue( m_szPath + 'squad_alerted.txt', squad_alerted, true );
        m_FileSystem.GetKeyAndValue( m_szPath + 'player_revive.txt', player_revive, true );
        m_FileSystem.GetKeyAndValue( m_szPath + 'projectiles_speed.txt', projectiles_speed, true );
        m_FileSystem.GetKeyAndValue( m_szPath + 'voltigore_explode.txt', voltigore_explode, true );
        m_FileSystem.GetKeyAndValue( m_szPath + 'deathdrop_grenade.txt', deathdrop_grenade, true );
        m_FileSystem.GetKeyAndValue( m_szPath + 'map_changes.txt', map_changes, true );
        m_FileSystem.GetKeyAndValue( m_szPath + 'nochanges.txt', nochanges, true );
        m_FileSystem.GetKeyAndValue( m_szPath + 'changes.txt', changes, true );*/


        global_messages( barnacle_speed, 'barnacle speed up', true, msgPath );
        global_messages( vote_notenought, 'vote failed no votes', true, msgPath );
        global_messages( vote_diffstarted, 'vote started', true, msgPath );
        global_messages( vote_cooldown, 'vote on cooldown', true, msgPath );
        global_messages( vote_startvote, 'vote start', true, msgPath );
        global_messages( vote_showinfo, 'vote info', true, msgPath );
        global_messages( vote_menu, 'vote menu', true, msgPath );
        global_messages( diff_updated, 'diff updated', true, msgPath );
        global_messages( diff_current, 'diff current', true, msgPath );
        global_messages( diff_voted, 'diff voted', true, msgPath );
        global_messages( zombie_uncrab, 'zombie uncrab', true, msgPath );
        global_messages( agrunt_berserk, 'agrunt berserk', true, msgPath );
        global_messages( agrunt_punchpush, 'agrunt punch', true, msgPath );
        global_messages( agrunt_stun, 'agrunt stun', true, msgPath );
        global_messages( islave_zap, 'islave zap', true, msgPath );
    }
}