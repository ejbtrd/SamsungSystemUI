.class public Lcom/android/systemui/globalactions/util/StatusBarWrapper;
.super Ljava/lang/Object;
.source "StatusBarWrapper.java"


# instance fields
.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/StatusBarWrapper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public isStatusBarExpandDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;)V
    .locals 1

    .line 24
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/StatusBarWrapper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method
