.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StringStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

.field public static final enum DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

.field public static final enum DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

.field public static final enum NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

.field public static final enum REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

.field public static final enum SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 54
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    const-string v1, "REMOTE_LABEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 55
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    const-string v3, "DUAL_BT_DEVICE_ADDRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 56
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    const-string v5, "DUAL_BT_DEVICE_NAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 57
    new-instance v5, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    const-string v7, "SMART_VIEW_LABEL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 58
    new-instance v7, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    const-string v9, "NAME_RES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 53
    sput-object v9, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;
    .locals 1

    .line 53
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;
    .locals 1

    .line 53
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    return-object v0
.end method
