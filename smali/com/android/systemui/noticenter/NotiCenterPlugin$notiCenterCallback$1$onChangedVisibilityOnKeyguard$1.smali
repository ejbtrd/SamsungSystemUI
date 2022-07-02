.class final Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onChangedVisibilityOnKeyguard$1;
.super Ljava/lang/Object;
.source "NotiCenterPlugin.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;->onChangedVisibilityOnKeyguard(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $show:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onChangedVisibilityOnKeyguard$1;->$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 57
    sget-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    iget-boolean p0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onChangedVisibilityOnKeyguard$1;->$show:Z

    invoke-static {p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$setShowNotilusOnKeyguard$p(Z)V

    .line 58
    invoke-virtual {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NotiStar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestNotificationUpdate(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
