.class Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;
.super Ljava/lang/Object;
.source "SlimIndicatorViewMediatorImpl.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsListener"
.end annotation


# instance fields
.field private final mSettingsValueList:[Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)V
    .locals 3

    .line 259
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "icon_blacklist"

    .line 256
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    .line 260
    invoke-static {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->access$000(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 261
    invoke-static {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->access$000(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 0

    .line 267
    iget-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-static {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->access$000(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 268
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-static {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->access$000(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->access$100(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
