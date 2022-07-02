.class public final Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;
.super Ljava/lang/Object;
.source "ControlsMetricsLoggerImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/ControlsMetricsLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ControlsMetricsLoggerImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ControlsMetricsLoggerImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private instanceId:I

.field private final instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->Companion:Lcom/android/systemui/controls/ControlsMetricsLoggerImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/internal/logging/InstanceIdSequence;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    return-void
.end method


# virtual methods
.method public drag(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 0
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 30
    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger$DefaultImpls;->drag(Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    return-void
.end method

.method public log(IIIZ)V
    .locals 6

    .line 56
    iget v2, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceId:I

    const/16 v0, 0x15d

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 53
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIZ)V

    return-void
.end method

.method public longPress(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 0
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 30
    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger$DefaultImpls;->longPress(Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    return-void
.end method

.method public refreshEnd(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 0
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 30
    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger$DefaultImpls;->refreshEnd(Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    return-void
.end method

.method public touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 0
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 30
    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger$DefaultImpls;->touch(Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    return-void
.end method
