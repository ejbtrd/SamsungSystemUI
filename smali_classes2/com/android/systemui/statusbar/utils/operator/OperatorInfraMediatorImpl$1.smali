.class synthetic Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;
.super Ljava/lang/Object;
.source "OperatorInfraMediatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

.field static final synthetic $SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 266
    invoke-static {}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->values()[Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING_FROM_CSC_FEATURE:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    sget-object v4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING_FROM_CARRIER_FEATURE:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    sget-object v5, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->OVERRIDE_ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    sget-object v6, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->COUNTRY_ISO_STRING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    sget-object v7, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->SYSTEM_ICON_LIST:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    sget-object v8, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->MAX_SIGNAL_LEVEL:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    sget-object v9, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->PRIMARY_SIM_SLOT_ID:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    sget-object v10, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->CARRIER_INFO_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v9, 0xa

    :try_start_9
    sget-object v10, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    sget-object v11, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->NO_SIM_NOTI_BUILDER:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v10, 0xb

    :try_start_a
    sget-object v11, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    sget-object v12, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->RES_ID_OF_LOCK_CARRIER_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v11, 0xc

    :try_start_b
    sget-object v12, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    sget-object v13, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->RES_ID_OF_HOME_CARRIER_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 61
    :catch_b
    invoke-static {}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->values()[Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    :try_start_c
    sget-object v13, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_TSS20:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v12, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_DUAL_IMS_SUPPORTED:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v0, v1, v12
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_BACKGROUND_DATA_RESTRICTION_BY_PCO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_VERIZON_BRANDED_TABLET:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_SLOT_AVAILABLE:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_CHECK_ONE_LEVEL_PER_SEC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SIGNAL_COMBINED_WITH_DATA_REG:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SIGNAL_FROM_DAT_REG_IN_OPPORTUNISTIC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_SIGNAL_ICON_AT_EMERGENCY_ONLY:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_SIMPLE_TYPE_NW_BOOSTER:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SHOULD_DISPLAY_NO_SERVICE_AT_NO_SIM:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_4G_INSTEAD_OF_4G_PLUS:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_4_HALF_G_INSTEAD_OF_4G_PLUS:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_LTE_INSTEAD_OF_4G:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_ONE_SHAPED_5G_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_5G_PLUS_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_LTE_WIDE_BAND_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NO_SIM_NOTIFICATION:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->APPLY_FEMTO_CELL_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_ONLY_GSM_ROAMING_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_ONLY_CDMA_ROAMING_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_DISPLAY_WIFI_AP_NAME_AS_PLMN:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_APPLY_CONFIG_RULE_FOR_SHOW_PLMN:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_TWO_PHONE:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_CLARO_BRAZIL_PLMN_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISPLAY_CBCH50:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SHOW_BATTERY_PERCENT_DEFAULT_ON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_THREE_SETTING_MENU_FOR_CARRIER_INFORMATION_VISIBILITY:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_MULTI_PATH_TCP:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_SUB_SCREEN_SIGNAL_INFO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_SIM_AND_OPERATOR_MATCHED:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SHOULD_CHECK_WIFI_STATE_FOR_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_MULTI_LINE_PANEL_CARRIER_LABEL_VIEW:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_5G_ACCESS_TEXT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_CHINA_NATION:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_USA_SPRINT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_USA_VZW:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_USA_TMO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_US:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_WIFI_CALLING_ICON_AT_WIFI_SLOT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SHOULD_LIMIT_ICON_AT_CTC_SLAVE_SLOT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SHOULD_DISPLAY_CTC_OP_SIGNAL_SPEC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_HSDPA_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_LEVEL_ZERO_AT_WFC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_4G_PLUS_INSTEAD_OF_4G:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->APPLY_ADVANCED_LTE_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->APPLY_TEF_ADVANCED_LTE_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->APPLY_AMX_ADVANCED_LTE_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_ROAMING_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_ROAMING_ICON_AT_GSM:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_ROAMING_ICON_AT_PS_ONLY:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_SHOW_EMPTY_PLMN_IF_NO_ACTIVE_SIM:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_LATIN_DISABLED_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    return-void
.end method
