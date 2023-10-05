void GetInformation( CBasePlayer@ pPlayer )
{
m_PlayerFuncs.ShowMOTD
(
pPlayer,
'[DifficultyDeluxe]',

m_Language.GetLanguage( pPlayer, msg.diff_current ).Replace( '$diff$', string( g_DDD.diff ) ) + '%\n\n' +
(
g_DDD.diff == 0 ? ( m_Language.GetLanguage( pPlayer, msg.nochanges ) + '\n' ) : ( m_Language.GetLanguage( pPlayer, msg.changes ) + '\n\n' ) +

( func_alien_grunt.active( func_alien_grunt.enable_berserk, func_alien_grunt.diff_berserk ) ? ( m_Language.GetLanguage( pPlayer, msg.agrunt_berserk ).Replace( '$units$', string( func_alien_grunt.AgruntBerserk() ) ) + '\n\n' ) : '' ) +

( func_alien_grunt.active( func_alien_grunt.enable_punch, func_alien_grunt.diff_punch ) ? m_Language.GetLanguage( pPlayer, msg.agrunt_punchpush ) + '\n\n' : '\n' ) +

( func_alien_grunt.active( func_alien_grunt.enable_stun, func_alien_grunt.diff_stun ) ? m_Language.GetLanguage( pPlayer, msg.agrunt_stun ) + '\n\n' : '\n' ) +

( func_alien_slave.active( func_alien_slave.enable_zap, func_alien_slave.diff_zap ) ? ( m_Language.GetLanguage( pPlayer, msg.islave_zap ).Replace( '$speed$', string( g_DDD.diff ) + '% (' + string( func_alien_slave.AlienSlaveZapp() ) + ')' ) + '\n\n' ) : '' ) +

( func_appearflags.enable == 1 ? m_Language.GetLanguage( pPlayer, msg.appearflags ) + '\n\n' : '' ) +

( func_barnacle_speed.active() ? m_Language.GetLanguage( pPlayer, msg.barnacle_speed ).Replace( '$speed$', string( g_DDD.diff ) + '%' ) + '\n\n' : '' ) +

( func_zombie_uncrab.active() ? m_Language.GetLanguage( pPlayer, msg.zombie_uncrab ).Replace( '$percent$', string( g_DDD.diff ) + '%' ) + '\n\n' : '' ) +

( func_voltigore.active( func_voltigore.enable_gib, func_voltigore.diff_gib ) ? m_Language.GetLanguage( pPlayer, msg.voltigore_explode ).Replace( '$percent$', string( g_DDD.diff ) + '%' ) + '\n\n' : '' ) +


/*
( g_DDD.func_deathdrop_grenade ? m_Language.GetLanguage( pPlayer, msg.deathdrop_grenade ).Replace( '$percent$', string( g_DDD.diff ) + '%' ) + '\n\n' : '' ) +

( g_DDD.func_proj_speed_hornet || g_DDD.func_proj_speed_garg_stomp ? m_Language.GetLanguage( pPlayer, msg.projectiles_speed ).Replace( '$percent$', string( g_DDD.diff ) + '%' ) + '\n\n' : '' ) +

( g_DDD.func_playerrevive ? m_Language.GetLanguage( pPlayer, msg.player_revive ).Replace( '$health$', string( 101 - g_DDD.diff ) ) + '\n\n' : '' ) +

			bStr = "(Lowest Difficulty)";
		else if(m_flAverageVoteDifficulty<0.1)
			bStr = "(Beginners)";
		else if(m_flAverageVoteDifficulty<0.2)
			bStr = "(Very Easy)";
		else if(m_flAverageVoteDifficulty<0.4)
			bStr = "(Easy)";
		else if(m_flAverageVoteDifficulty<0.6)
			bStr = "(Medium)";
		else if(m_flAverageVoteDifficulty<0.75)
			bStr = "(Hard)";
		else if(m_flAverageVoteDifficulty<0.85)
			bStr = "(Very Hard!)";
		else if(m_flAverageVoteDifficulty<0.9)
			bStr = "(WARNING: Extreme!)";
		else if(m_flAverageVoteDifficulty<0.95)
			bStr = "(WARNING: Near Impossible!)";
		else if(m_flAverageVoteDifficulty<0.9995)
			bStr = "(WARNING: Impossible!)";
		else
			bStr = "(WARNING: MAXIMUM DIFFICULTY!)";


// >10


// >20


// >30
( g_DDD.func_squad_alert && g_DDD.IsActive( squad.diff ) ? m_Language.GetLanguage( pPlayer, msg.squad_alerted ) + '\n\n' : '\n' ) +


// >40
( g_DDD.func_reflect_friendlyfire && g_DDD.diff >= 40 ? m_Language.GetLanguage( pPlayer, msg.reflect_friendlyfire ) + '\n\n' : '\n' ) +
//( g_DDD.diff >= 40 ? m_Language.GetLanguage( pPlayer, msg.ATele ).Replace( '$time$', string( ( g_Atele.iMaxTime / g_DDD.diff ) ) ) + '\n\n' : '\n' ) +


// >50
( g_DDD.func_monster_alert && g_DDD.IsActive( alert.diff ) ? m_Language.GetLanguage( pPlayer, msg.monster_alert ) + '\n\n' : '\n' ) +


// >60


// >70


// >80


// >90
( g_DDD.func_always_gib && g_DDD.diff == 100 ? m_Language.GetLanguage( pPlayer, msg.always_gib ) + '\n\n' : '\n' ) +*/


''
) + '\n'
);
}