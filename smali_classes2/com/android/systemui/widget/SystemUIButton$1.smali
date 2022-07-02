.class Lcom/android/systemui/widget/SystemUIButton$1;
.super Ljava/lang/Object;
.source "SystemUIButton.java"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/widget/SystemUIButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/widget/SystemUIButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/widget/SystemUIButton;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$1;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockStarEnabled(Z)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton$1;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIButton;->access$102(Lcom/android/systemui/widget/SystemUIButton;Z)Z

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$1;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIButton;->access$200(Lcom/android/systemui/widget/SystemUIButton;)Lcom/android/systemui/widget/SystemUIButton$ResData;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton$1;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    .line 50
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton;->access$500(Lcom/android/systemui/widget/SystemUIButton;)Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton$1;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton;->access$200(Lcom/android/systemui/widget/SystemUIButton;)Lcom/android/systemui/widget/SystemUIButton$ResData;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$400(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {p1, v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$302(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$1;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIButton;->access$200(Lcom/android/systemui/widget/SystemUIButton;)Lcom/android/systemui/widget/SystemUIButton$ResData;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton$1;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton;->access$600(Lcom/android/systemui/widget/SystemUIButton;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$302(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    :goto_0
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton$1;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton;->access$700(Lcom/android/systemui/widget/SystemUIButton;)Lcom/android/systemui/widget/SystemUIWidgetCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 55
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$1;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIButton;->access$700(Lcom/android/systemui/widget/SystemUIButton;)Lcom/android/systemui/widget/SystemUIWidgetCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$1;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    .line 56
    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIButton;->access$200(Lcom/android/systemui/widget/SystemUIButton;)Lcom/android/systemui/widget/SystemUIButton$ResData;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$300(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    return-void
.end method
