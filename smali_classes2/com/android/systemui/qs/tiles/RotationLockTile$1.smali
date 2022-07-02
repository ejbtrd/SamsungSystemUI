.class Lcom/android/systemui/qs/tiles/RotationLockTile$1;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RotationLockTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$1;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "accelerometer_rotation"

    .line 122
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$1;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$000(Lcom/android/systemui/qs/tiles/RotationLockTile;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " OnChangedCallback : "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$1;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_1
    return-void
.end method
