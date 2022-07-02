.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StringStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

.field public static final enum PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

.field public static final enum PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 148
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    const-string v1, "PIN_APP_NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    .line 149
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    const-string v3, "PIN_DEVICE_NAME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 147
    sput-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;
    .locals 1

    .line 147
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;
    .locals 1

    .line 147
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    return-object v0
.end method
