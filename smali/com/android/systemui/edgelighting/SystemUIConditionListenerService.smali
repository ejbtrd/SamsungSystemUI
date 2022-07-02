.class public Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;
.super Landroid/app/Service;
.source "SystemUIConditionListenerService.java"


# instance fields
.field private final mBinder:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    new-instance v0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;-><init>(Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;->mBinder:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, " intent is null "

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SysUIConditionListener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;->mBinder:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string p0, "SysUIConditionListener"

    const-string v0, "onCreate "

    .line 44
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
