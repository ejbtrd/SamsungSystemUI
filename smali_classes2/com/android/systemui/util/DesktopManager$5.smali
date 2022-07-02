.class Lcom/android/systemui/util/DesktopManager$5;
.super Landroid/database/ContentObserver;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/DesktopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/DesktopManager;Landroid/os/Handler;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager$5;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 241
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 243
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo p2, "touchpad_enabled"

    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 245
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$5;->this$0:Lcom/android/systemui/util/DesktopManager;

    const-string p2, "false"

    invoke-static {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->access$1700(Lcom/android/systemui/util/DesktopManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/util/DesktopManager;->access$1602(Lcom/android/systemui/util/DesktopManager;Z)Z

    :cond_0
    return-void
.end method
