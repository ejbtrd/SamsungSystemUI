.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LongStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

.field public static final enum USER_ATTEMPT_TIME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    const-string v1, "USER_ATTEMPT_TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;->USER_ATTEMPT_TIME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    aput-object v0, v1, v2

    .line 61
    sput-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;
    .locals 1

    .line 61
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;
    .locals 1

    .line 61
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    return-object v0
.end method
