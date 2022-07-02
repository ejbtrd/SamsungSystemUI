.class public final synthetic Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(IIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$0:I

    iput p2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$2:Z

    iput p4, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$0:I

    iget v1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean v2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$2:Z

    iget p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$3:I

    check-cast p1, Lcom/android/internal/widget/MessagingGroup;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->$r8$lambda$sQ7OiZ6nYPmdgo3qqqFGEvzva38(IIZILcom/android/internal/widget/MessagingGroup;)V

    return-void
.end method
