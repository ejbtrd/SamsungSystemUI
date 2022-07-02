.class public Lcom/android/systemui/keyguard/ScreenLifecycle;
.super Lcom/android/systemui/keyguard/SecLifecycle;
.source "ScreenLifecycle.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/keyguard/SecLifecycle<",
        "Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private mScreenState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/keyguard/SecLifecycle;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    return-void
.end method

.method private setScreenState(I)V
    .locals 2

    .line 90
    iput p1, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const-wide/16 v0, 0x1000

    const-string/jumbo p0, "screenState"

    .line 91
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public dispatchScreenInternalTurningOff()V
    .locals 1

    .line 79
    sget-object v0, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchScreenInternalTurningOn()V
    .locals 1

    .line 74
    sget-object v0, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchScreenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    .line 69
    sget-object v0, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchScreenTurnedOn()V
    .locals 1

    const/4 v0, 0x2

    .line 58
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    .line 59
    sget-object v0, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda3;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchScreenTurningOff()V
    .locals 1

    const/4 v0, 0x3

    .line 63
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    .line 64
    sget-object v0, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda4;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchScreenTurningOn()V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    .line 54
    sget-object v0, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda5;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "ScreenLifecycle:"

    .line 85
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mScreenState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getScreenState()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    return p0
.end method
