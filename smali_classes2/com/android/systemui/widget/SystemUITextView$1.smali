.class Lcom/android/systemui/widget/SystemUITextView$1;
.super Ljava/lang/Object;
.source "SystemUITextView.java"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/widget/SystemUITextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/widget/SystemUITextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/widget/SystemUITextView;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUITextView$1;->this$0:Lcom/android/systemui/widget/SystemUITextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockStarEnabled(Z)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView$1;->this$0:Lcom/android/systemui/widget/SystemUITextView;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->access$002(Lcom/android/systemui/widget/SystemUITextView;Z)Z

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView$1;->this$0:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v0, p1, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 63
    invoke-static {p1}, Lcom/android/systemui/widget/SystemUITextView;->access$300(Lcom/android/systemui/widget/SystemUITextView;)Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView$1;->this$0:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$200(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$102(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView$1;->this$0:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v0, p1, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUITextView;->access$400(Lcom/android/systemui/widget/SystemUITextView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$102(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    :goto_0
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView$1;->this$0:Lcom/android/systemui/widget/SystemUITextView;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView;->access$500(Lcom/android/systemui/widget/SystemUITextView;)Lcom/android/systemui/widget/SystemUIWidgetCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 68
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView$1;->this$0:Lcom/android/systemui/widget/SystemUITextView;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUITextView;->access$500(Lcom/android/systemui/widget/SystemUITextView;)Lcom/android/systemui/widget/SystemUIWidgetCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUITextView$1;->this$0:Lcom/android/systemui/widget/SystemUITextView;

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 69
    invoke-static {p0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    return-void
.end method
