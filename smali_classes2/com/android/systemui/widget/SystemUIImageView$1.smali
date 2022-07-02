.class Lcom/android/systemui/widget/SystemUIImageView$1;
.super Ljava/lang/Object;
.source "SystemUIImageView.java"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/widget/SystemUIImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/widget/SystemUIImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/widget/SystemUIImageView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$1;->this$0:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockStarEnabled(Z)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView$1;->this$0:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->access$102(Lcom/android/systemui/widget/SystemUIImageView;Z)Z

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$1;->this$0:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView;->access$200(Lcom/android/systemui/widget/SystemUIImageView;)Lcom/android/systemui/widget/SystemUIImageView$ResData;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView$1;->this$0:Lcom/android/systemui/widget/SystemUIImageView;

    .line 53
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView;->access$500(Lcom/android/systemui/widget/SystemUIImageView;)Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView$1;->this$0:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView;->access$200(Lcom/android/systemui/widget/SystemUIImageView;)Lcom/android/systemui/widget/SystemUIImageView$ResData;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$1;->this$0:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView;->access$200(Lcom/android/systemui/widget/SystemUIImageView;)Lcom/android/systemui/widget/SystemUIImageView$ResData;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView$1;->this$0:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView;->access$600(Lcom/android/systemui/widget/SystemUIImageView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    :goto_0
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView$1;->this$0:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView;->access$700(Lcom/android/systemui/widget/SystemUIImageView;)Lcom/android/systemui/widget/SystemUIWidgetCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 58
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$1;->this$0:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView;->access$700(Lcom/android/systemui/widget/SystemUIImageView;)Lcom/android/systemui/widget/SystemUIWidgetCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$1;->this$0:Lcom/android/systemui/widget/SystemUIImageView;

    .line 59
    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIImageView;->access$200(Lcom/android/systemui/widget/SystemUIImageView;)Lcom/android/systemui/widget/SystemUIImageView$ResData;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    return-void
.end method
