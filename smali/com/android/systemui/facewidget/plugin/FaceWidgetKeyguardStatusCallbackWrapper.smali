.class public Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;
.super Ljava/lang/Object;
.source "FaceWidgetKeyguardStatusCallbackWrapper.java"

# interfaces
.implements Lcom/android/systemui/plugins/facewidget/PluginKeyguardStatusCallback;


# instance fields
.field private mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDozing()Z
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-eqz p0, :cond_0

    .line 37
    invoke-interface {p0}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->isDozing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardState()Z
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-eqz p0, :cond_0

    .line 29
    invoke-interface {p0}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->isKeyguardState()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setFullScreenMode(ZJ)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-eqz p0, :cond_0

    .line 45
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->setFullScreenMode(ZJ)V

    :cond_0
    return-void
.end method

.method public setFullScreenMode(ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-eqz p0, :cond_0

    .line 52
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->setFullScreenMode(ZJLandroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public setKeyguardStatusCallback(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    return-void
.end method

.method public setMusicShown(Z)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-eqz p0, :cond_0

    .line 59
    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->setMusicShown(Z)V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-eqz p0, :cond_0

    .line 66
    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->startActivity(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZI)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-eqz p0, :cond_0

    .line 73
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;ZI)V

    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-eqz p0, :cond_0

    .line 80
    invoke-interface {p0}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->userActivity()V

    :cond_0
    return-void
.end method
