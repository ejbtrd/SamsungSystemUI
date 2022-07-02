.class public Lcom/android/systemui/statusbar/utils/MPTCPResource;
.super Ljava/lang/Object;
.source "MPTCPResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;
    }
.end annotation


# instance fields
.field private final mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/MPTCPResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    return-void
.end method


# virtual methods
.method public updateMPTCPIconState(ZILjava/lang/String;ZILjava/lang/String;ILcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;)V
    .locals 7

    const/4 v0, 0x0

    .line 48
    iput v0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    .line 49
    iput v0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->gigaIconId:I

    .line 50
    iput v0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->typeIconId:I

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->visible:Z

    if-nez p1, :cond_0

    .line 54
    iput-boolean v0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->visible:Z

    goto/16 :goto_4

    .line 56
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMPTCPIconState: getSubscriberId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MPTCPResource"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v2, p0, Lcom/android/systemui/statusbar/utils/MPTCPResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->PRIMARY_SIM_SLOT_ID:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v5, -0x1

    new-array v6, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MPTCPResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {p0, v4, v2, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "TUR"

    .line 59
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_c

    if-eqz p6, :cond_19

    const-string p0, "28603"

    .line 61
    invoke-virtual {p6, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 62
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_4g_half:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->typeIconId:I

    if-eqz p4, :cond_1

    .line 65
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_4g_half_giga:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->gigaIconId:I

    goto :goto_0

    .line 67
    :cond_1
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_4g_half_giga_dim:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->gigaIconId:I

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    or-int/2addr p2, p5

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    if-eq p2, v1, :cond_6

    if-eq p2, v5, :cond_5

    if-eq p2, v4, :cond_4

    .line 87
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_4g_half_no_inout:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto/16 :goto_4

    .line 84
    :cond_4
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_4g_half_inout:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto/16 :goto_4

    .line 81
    :cond_5
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_4g_half_out:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto/16 :goto_4

    .line 78
    :cond_6
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_4g_half_in:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto/16 :goto_4

    :cond_7
    const-string p0, "28602"

    .line 90
    invoke-virtual {p6, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    if-eqz p1, :cond_b

    if-eqz p4, :cond_b

    .line 92
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_4gbit:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->typeIconId:I

    or-int p0, p2, p5

    if-eq p0, v1, :cond_a

    if-eq p0, v5, :cond_9

    if-eq p0, v4, :cond_8

    .line 106
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_4gbit_no_inout:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto/16 :goto_4

    .line 103
    :cond_8
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_4gbit_inout:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto/16 :goto_4

    .line 100
    :cond_9
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_4gbit_out:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto/16 :goto_4

    .line 97
    :cond_a
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_4gbit_in:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto/16 :goto_4

    .line 110
    :cond_b
    iput-boolean v0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->visible:Z

    goto/16 :goto_4

    :cond_c
    const-string v2, "THL"

    .line 114
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    if-eqz p6, :cond_19

    const-string p0, "52003"

    .line 116
    invoke-virtual {p6, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p6, "refreshMPTCPIndicator: dataTypeName "

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " inetCondition "

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_11

    const-string p0, "5G"

    .line 118
    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    const-string p0, "4G"

    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    const-string p0, "3G"

    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    const-string p0, "H"

    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    :cond_d
    if-eqz p4, :cond_11

    if-ne v1, p7, :cond_11

    .line 120
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_nextg:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->typeIconId:I

    .line 121
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_nextg_giga:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->gigaIconId:I

    or-int p0, p2, p5

    if-eq p0, v1, :cond_10

    if-eq p0, v5, :cond_f

    if-eq p0, v4, :cond_e

    .line 136
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_nextg_no_inout:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto :goto_4

    .line 133
    :cond_e
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_nextg_inout:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto :goto_4

    .line 130
    :cond_f
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_nextg_out:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto :goto_4

    .line 127
    :cond_10
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_nextg_in:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto :goto_4

    .line 140
    :cond_11
    iput-boolean v0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->visible:Z

    goto :goto_4

    .line 145
    :cond_12
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_lte:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->typeIconId:I

    if-eqz p4, :cond_13

    .line 148
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_giga:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->gigaIconId:I

    goto :goto_2

    .line 150
    :cond_13
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_mptcp_giga_dim:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->gigaIconId:I

    :goto_2
    if-eqz p1, :cond_14

    if-eqz p4, :cond_14

    or-int/2addr p2, p5

    goto :goto_3

    :cond_14
    if-eqz p1, :cond_15

    goto :goto_3

    :cond_15
    move p2, v0

    :goto_3
    if-eq p2, v1, :cond_18

    if-eq p2, v5, :cond_17

    if-eq p2, v4, :cond_16

    .line 170
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_no_inout:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto :goto_4

    .line 167
    :cond_16
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_inout:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto :goto_4

    .line 164
    :cond_17
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_out:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    goto :goto_4

    .line 161
    :cond_18
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_in:I

    iput p0, p8, Lcom/android/systemui/statusbar/utils/MPTCPResource$MPTCPIconState;->activityIconId:I

    :cond_19
    :goto_4
    return-void
.end method
