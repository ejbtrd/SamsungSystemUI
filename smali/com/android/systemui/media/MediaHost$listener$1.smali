.class public final Lcom/android/systemui/media/MediaHost$listener$1;
.super Ljava/lang/Object;
.source "MediaHost.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHost;-><init>(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/media/MediaHostStatesManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost$listener$1;->this$0:Lcom/android/systemui/media/MediaHost;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;ZZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$listener$1;->this$0:Lcom/android/systemui/media/MediaHost;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHost;->access$updateViewVisibility(Lcom/android/systemui/media/MediaHost;)V

    :cond_0
    return-void
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$listener$1;->this$0:Lcom/android/systemui/media/MediaHost;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHost;->access$updateViewVisibility(Lcom/android/systemui/media/MediaHost;)V

    return-void
.end method

.method public onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/SmartspaceMediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "key"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$listener$1;->this$0:Lcom/android/systemui/media/MediaHost;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHost;->access$updateViewVisibility(Lcom/android/systemui/media/MediaHost;)V

    return-void
.end method

.method public onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$listener$1;->this$0:Lcom/android/systemui/media/MediaHost;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHost;->access$updateViewVisibility(Lcom/android/systemui/media/MediaHost;)V

    :cond_0
    return-void
.end method
