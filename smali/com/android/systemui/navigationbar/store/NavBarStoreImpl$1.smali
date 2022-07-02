.class synthetic Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;
.super Ljava/lang/Object;
.source "NavBarStoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

.field static final synthetic $SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

.field static final synthetic $SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 587
    invoke-static {}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->values()[Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->REEVALUATE_NAVBAR:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->REEVALUATE_NAVBAR_ICON:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v4, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_SETUPWIZARD_STYLE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v5, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_NORMAL_STYLE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v6, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->SET_DISABLE_SETUPWIZARD_BACK:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v7, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->CLEAR_DISABLE_SETUPWIZARD_BACK:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v8, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_SETUPWIZARD_DARK_INTENSITY:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v9, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_SETUPWIZARD_ICON_HINT:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v10, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->REINFLATE_NAVBAR:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v9, 0xa

    :try_start_9
    sget-object v10, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v11, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NIGHT_MODE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v10, 0xb

    :try_start_a
    sget-object v11, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v12, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_ICON_AND_HINT:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v11, 0xc

    :try_start_b
    sget-object v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_OPAQUE_COLOR:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v12, 0xd

    :try_start_c
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_CAN_MOVE_IN_REMOTEVIEW:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/16 v13, 0xe

    :try_start_d
    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_CAN_MOVE_VALUE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/16 v14, 0xf

    :try_start_e
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v16, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVIGATION_MODE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v15, 0x10

    :try_start_f
    sget-object v16, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v17, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_TRANSITION_MODE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aput v15, v16, v17
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    const/16 v16, 0x11

    :try_start_10
    sget-object v17, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v18, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->INVALIDATE_NAVBAR_REMOTEVIEW:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aput v16, v17, v18
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    const/16 v17, 0x12

    :try_start_11
    sget-object v18, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v19, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_REMOTEVIEW_CONTAINER:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aput v17, v18, v19
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    const/16 v18, 0x13

    :try_start_12
    sget-object v19, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v20, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_RIGHT_REMOTEVIEW_VISIBILITY:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aput v18, v19, v20
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    const/16 v19, 0x14

    :try_start_13
    sget-object v20, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v21, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_REMOTEVIEW_DARK_INTENSITY:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    aput v19, v20, v21
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    const/16 v20, 0x15

    :try_start_14
    sget-object v21, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_REMOTEVIEW_LIST:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    aput v20, v21, v22
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    const/16 v21, 0x16

    :try_start_15
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_GAMETOOLS_STATE_FLAG:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v21, v22, v23
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->SHOW_FLOATING_GAMETOOLS_ICON:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x17

    aput v24, v22, v23
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->SET_GESTURE_HINT_GROUP:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x18

    aput v24, v22, v23
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->START_GESTURE_HINT_VI:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x19

    aput v24, v22, v23
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->MOVE_GESTURE_HINT_VI:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1a

    aput v24, v22, v23
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->RESET_GESTURE_HINT_VI:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1b

    aput v24, v22, v23
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_GESTURE_HINT_VISIBILITY_STATE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1c

    aput v24, v22, v23
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_GESTURE_HINT_VISIBILITY:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1d

    aput v24, v22, v23
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->HIDE_GESTURE_HINT:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1e

    aput v24, v22, v23
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_SPAY_VISIBILITY:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1f

    aput v24, v22, v23
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->DO_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x20

    aput v24, v22, v23
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->SET_NAVBAR_GONE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x21

    aput v24, v22, v23
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->SET_NAVBAR_VISIBLE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x22

    aput v24, v22, v23
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_THEME_DEFAULT:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x23

    aput v24, v22, v23
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_SETUPWIZARD_A11Y_ICON:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x24

    aput v24, v22, v23
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->DISABLE_EDGE_BACK_GESTURE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x25

    aput v24, v22, v23
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->ENABLE_EDGE_BACK_GESTURE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x26

    aput v24, v22, v23
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_GONE_STATE_FLAG:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x27

    aput v24, v22, v23
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_HARD_KEY_INTENT_POLICY:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x28

    aput v24, v22, v23
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_HARD_KEY_INTENT_POLICY_STATE_FLAG:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x29

    aput v24, v22, v23
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_LAYOUT_PROVIDER:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x2a

    aput v24, v22, v23
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->SHOW_A11Y_SWIPE_UP_TIP_POPUP:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x2b

    aput v24, v22, v23
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->FORCE_OVERLAY_NO_HINT_PACKAGE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x2c

    aput v24, v22, v23
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->FORCE_OVERLAY_HINT_PACKAGE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x2d

    aput v24, v22, v23
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_ONEHAND_MODE_INFO:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x2e

    aput v24, v22, v23
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_REGION_SAMPLING_RECT:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x2f

    aput v24, v22, v23
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v22, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_SUPPORT_PHONE_LAYOUT_PROVIDER_VALUE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x30

    aput v24, v22, v23
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    .line 354
    :catch_2f
    invoke-static {}, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->values()[Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    :try_start_30
    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_VISIBILITY:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_COLOR:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_INFLATE_VERTICAL_LAYOUT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_INFLATE_HORIZONTAL_LAYOUT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->STR_SIDE_BOTTOM_GESTURAL_LAYOUT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->STR_BOTTOM_GESTURAL_LAYOUT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v5, v15, v23
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->STR_DEFAULT_LAYOUT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v6, v15, v23
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->STR_SHOOTING_LAYOUT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v7, v15, v23
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_INFLATE_LAYOUT_SIDE_PADDING_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v8, v15, v23
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_INFLATE_LAYOUT_SIDE_PADDING_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v9, v15, v23
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_MAIN_KEY_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v10, v15, v23
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_MAIN_KEY_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v11, v15, v23
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_HOME_HANDLE_HINT_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v12, v15, v23
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v23, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_HOME_HANDLE_HINT_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v13, v15, v23
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v15, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->FLOAT_REMOTEVIEW_DARK_INTENSITY:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v14, v13, v15
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_EXTRA_KEY_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x10

    aput v15, v13, v14
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_EXTRA_KEY_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v16, v13, v14
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_KEYMARGIN_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v17, v13, v14
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_KEYMARGIN_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v18, v13, v14
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_DEADZONE_SIZE_MAX:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v19, v13, v14
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_DEADZONE_SIZE_MIN:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v20, v13, v14
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_ICON_HINTS:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v21, v13, v14
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_DISABLED1:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x17

    aput v15, v13, v14
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_ATTACHED:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x18

    aput v15, v13, v14
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_GESTURAL_MODE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x19

    aput v15, v13, v14
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_SIDE_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x1a

    aput v15, v13, v14
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x1b

    aput v15, v13, v14
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NIGHT_MODE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x1c

    aput v15, v13, v14
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_LIGHT_OPAQUE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x1d

    aput v15, v13, v14
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_OPAQUE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x1e

    aput v15, v13, v14
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_PINNED_EDGE_ENABELD:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x1f

    aput v15, v13, v14
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_REGION_SAMPLING_ENABLED:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x20

    aput v15, v13, v14
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_LEFT_REMOTEVIEW_EXIST:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x21

    aput v15, v13, v14
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_RIGHT_REMOTEVIEW_EXIST:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x22

    aput v15, v13, v14
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_BUTTON_REVERSE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x23

    aput v15, v13, v14
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_KEYGUARD_SHOWING:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x24

    aput v15, v13, v14
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_SETUPWIZARD_STYLE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x25

    aput v15, v13, v14
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_GAME_MODE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x26

    aput v15, v13, v14
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_FLOATING_GAMETOOLS_SUPPORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x27

    aput v15, v13, v14
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_FLOATING_GAMETOOLS_SHOWING:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x28

    aput v15, v13, v14
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_IME_SHOWING:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x29

    aput v15, v13, v14
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_CLEAR_COVER_CLOSED:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x2a

    aput v15, v13, v14
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_GESTURE_HINT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x2b

    aput v15, v13, v14
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_CAN_MOVE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x2c

    aput v15, v13, v14
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5c
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_SPAY_SHOWING:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x2d

    aput v15, v13, v14
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x2e

    aput v15, v13, v14
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5e
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_ALLOW_KEYBOARD_BUTTON_ALL_ROTATION:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x2f

    aput v15, v13, v14
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5f
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_HIDDEN_BY_KNOX:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x30

    aput v15, v13, v14
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_USE_THEME_DEFAULT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x31

    aput v15, v13, v14
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    :try_start_61
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_ACTIVE_THEME_PACKAGE_EXIST:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x32

    aput v15, v13, v14
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    :catch_61
    :try_start_62
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_EDGE_BACK_GESTURE_DISABLED_BY_POLICY:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x33

    aput v15, v13, v14
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    :catch_62
    :try_start_63
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_HARD_KEY_INTENT_POLICY:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x34

    aput v15, v13, v14
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    :catch_63
    :try_start_64
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_BUTTON_FORCED_VISIBLE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x35

    aput v15, v13, v14
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    :catch_64
    :try_start_65
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_A11Y_SWIPE_POPUP_ENABLED:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x36

    aput v15, v13, v14
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    :catch_65
    :try_start_66
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_SUPPORT_PHONE_LAYOUT_PROVIDER:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x37

    aput v15, v13, v14
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    :catch_66
    :try_start_67
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NEED_REINFLATE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x38

    aput v15, v13, v14
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    :catch_67
    :try_start_68
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_COLOR_THEME_ENABLED:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x39

    aput v15, v13, v14
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    :catch_68
    :try_start_69
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_SUPPORT_SUBSCREEN_NAVBAR:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x3a

    aput v15, v13, v14
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    :catch_69
    :try_start_6a
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_INFLATE_LAYOUT_SIDE_PADDING_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x3b

    aput v15, v13, v14
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    :catch_6a
    :try_start_6b
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_INFLATE_LAYOUT_SIDE_PADDING_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x3c

    aput v15, v13, v14
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6c
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_MAIN_KEY_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x3d

    aput v15, v13, v14
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6d
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_MAIN_KEY_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x3e

    aput v15, v13, v14
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6e
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_HOME_HANDLE_HINT_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x3f

    aput v15, v13, v14
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6f
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_HOME_HANDLE_HINT_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x40

    aput v15, v13, v14
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_70
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_EXTRA_KEY_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x41

    aput v15, v13, v14
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_70

    :catch_70
    :try_start_71
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_EXTRA_KEY_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x42

    aput v15, v13, v14
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_71

    :catch_71
    :try_start_72
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_KEYMARGIN_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x43

    aput v15, v13, v14
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_72

    :catch_72
    :try_start_73
    sget-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    sget-object v14, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_KEYMARGIN_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x44

    aput v15, v13, v14
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_73

    .line 220
    :catch_73
    invoke-static {}, Lcom/android/systemui/navigationbar/store/EventType;->values()[Lcom/android/systemui/navigationbar/store/EventType;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    :try_start_74
    sget-object v14, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVIGATIONBAR_CREATED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v1, v13, v14
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_74

    :catch_74
    :try_start_75
    sget-object v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    sget-object v13, Lcom/android/systemui/navigationbar/store/EventType;->ON_LIGHTBAR_CONTROLLER_CREATED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v0, v1, v13
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_75

    :catch_75
    :try_start_76
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_76

    :catch_76
    :try_start_77
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_DETACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_77

    :catch_77
    :try_start_78
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_CONFIG_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_78} :catch_78

    :catch_78
    :try_start_79
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_SET_DISABLE_FLAGS:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_79} :catch_79

    :catch_79
    :try_start_7a
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_NAVBAR_INFLATE_SCREEN_SIZE:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7b
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_START_NAVBAR_REMOTEVIEW_MANAGER_SERVICE:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7c
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_SET_GESTURE_HINT_VISIBILITY:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_7c} :catch_7c

    :catch_7c
    :try_start_7d
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_ICON_HINT_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7e
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_REGION_SAMPLING_ENABLE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_7e} :catch_7e

    :catch_7e
    :try_start_7f
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_CAN_MOVE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_7f} :catch_7f

    :catch_7f
    :try_start_80
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_DEVICE_PROVISIONED_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_80} :catch_80

    :catch_80
    return-void
.end method
