.class public final enum Lcom/android/systemui/doze/DozeMachine$State;
.super Ljava/lang/Enum;
.source "DozeMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/doze/DozeMachine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_DASHBOARD:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum FINISH:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum SCRIM_AOD_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 67
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 69
    new-instance v1, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 71
    new-instance v3, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v5, "DOZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 73
    new-instance v5, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v7, "DOZE_AOD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 75
    new-instance v7, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v9, "DOZE_REQUEST_PULSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 77
    new-instance v9, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v11, "DOZE_PULSING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 79
    new-instance v11, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v13, "DOZE_PULSING_BRIGHT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    .line 81
    new-instance v13, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v15, "DOZE_PULSE_DONE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 83
    new-instance v15, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v14, "FINISH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    .line 85
    new-instance v14, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v12, "DOZE_AOD_PAUSED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 87
    new-instance v12, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v10, "DOZE_AOD_PAUSING"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 89
    new-instance v10, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v8, "DOZE_AOD_DOCKED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 92
    new-instance v8, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v6, "DOZE_MOD"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 95
    new-instance v6, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v4, "SCRIM_AOD_ENDED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/doze/DozeMachine$State;->SCRIM_AOD_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 98
    new-instance v4, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v2, "DOZE_TRANSITION_ENDED"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 101
    new-instance v2, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v6, "DOZE_DASHBOARD"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_DASHBOARD:Lcom/android/systemui/doze/DozeMachine$State;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/android/systemui/doze/DozeMachine$State;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 65
    sput-object v6, Lcom/android/systemui/doze/DozeMachine$State;->$VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/doze/DozeMachine$State;
    .locals 1

    .line 65
    const-class v0, Lcom/android/systemui/doze/DozeMachine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/doze/DozeMachine$State;
    .locals 1

    .line 65
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->$VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0}, [Lcom/android/systemui/doze/DozeMachine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/doze/DozeMachine$State;

    return-object v0
.end method


# virtual methods
.method public canClockTransition()Z
    .locals 1

    .line 177
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public canMOD()Z
    .locals 2

    .line 166
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method canPulse()Z
    .locals 2

    .line 106
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method isAlwaysOn()Z
    .locals 1

    .line 131
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method screenState(Lcom/android/systemui/statusbar/phone/DozeParameters;)I
    .locals 2

    .line 135
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 139
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method staysAwake()Z
    .locals 1

    .line 119
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
