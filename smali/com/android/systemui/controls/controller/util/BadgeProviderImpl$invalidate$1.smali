.class final Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;
.super Ljava/lang/Object;
.source "BadgeProviderImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBadgeProviderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BadgeProviderImpl.kt\ncom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,164:1\n1819#2,2:165\n*E\n*S KotlinDebug\n*F\n+ 1 BadgeProviderImpl.kt\ncom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1\n*L\n160#1,2:165\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->access$needToExpose(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->access$getBadgeSymbol(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 160
    invoke-static {p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->access$getBadgeObservers$p(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)Ljava/util/Set;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 160
    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/util/BadgeObserver;->getMenuItem()Landroidx/appcompat/view/menu/SeslMenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/SeslMenuItem;->setBadgeText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method
