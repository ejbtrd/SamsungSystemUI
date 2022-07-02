.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;
.super Ljava/lang/Object;
.source "NavBarStoreAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/store/NavBarStoreAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteViewShortcut"
.end annotation


# instance fields
.field private position:I

.field private priority:I

.field private remoteViews:Landroid/widget/RemoteViews;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private requestClass:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/RemoteViews;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "requestClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->requestClass:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->remoteViews:Landroid/widget/RemoteViews;

    .line 130
    iput p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->position:I

    .line 131
    iput p4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->priority:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/widget/RemoteViews;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const/4 v0, -0x1

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 128
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->requestClass:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->requestClass:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->remoteViews:Landroid/widget/RemoteViews;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->remoteViews:Landroid/widget/RemoteViews;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->position:I

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->position:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->priority:I

    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->priority:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getPosition()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->position:I

    return p0
.end method

.method public final getPriority()I
    .locals 0

    .line 131
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->priority:I

    return p0
.end method

.method public final getRemoteViews()Landroid/widget/RemoteViews;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->remoteViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public final getRequestClass()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 128
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->requestClass:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->requestClass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->remoteViews:Landroid/widget/RemoteViews;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->priority:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteViewShortcut(requestClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->requestClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteViews="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->priority:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
