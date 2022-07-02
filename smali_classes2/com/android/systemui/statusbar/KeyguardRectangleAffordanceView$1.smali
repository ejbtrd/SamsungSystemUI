.class Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$1;
.super Ljava/lang/Object;
.source "KeyguardRectangleAffordanceView.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "white_lockscreen_wallpaper"

    .line 218
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 219
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$100(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$002(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z

    .line 220
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$200(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    :cond_1
    return-void
.end method
