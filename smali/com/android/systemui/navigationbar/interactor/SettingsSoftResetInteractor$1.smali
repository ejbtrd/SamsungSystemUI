.class Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsSoftResetInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->addCallback(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;Ljava/lang/Runnable;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$1;->this$0:Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$1;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
