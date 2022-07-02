.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StringStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum AUDIO_SHARING_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 145
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const-string v1, "SMART_VIEW_DEVICE_NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 146
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const-string v3, "ACTIVE_BT_DEVICE_NAME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 147
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const-string v5, "PIN_APP_NAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 148
    new-instance v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const-string v7, "PIN_DEVICE_NAME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 149
    new-instance v7, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const-string v9, "BT_SCO_DEVICE_NAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 150
    new-instance v9, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const-string v11, "AUDIO_SHARING_DEVICE_NAME"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->AUDIO_SHARING_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 144
    sput-object v11, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;
    .locals 1

    .line 144
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;
    .locals 1

    .line 144
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    return-object v0
.end method
