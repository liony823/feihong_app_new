import 'package:common/common.dart';
import 'package:flutter/material.dart';

class ErrorRetryWidget extends StatelessWidget {
  final String? message;
  final VoidCallback? onRetry;

  const ErrorRetryWidget({super.key, this.message, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 32.sp, color: Styles.error),
            SizedBox(height: 16.h),
            Text(
              message ?? context.t.errors.somethingUnexpected,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[600],
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            TextButton(onPressed: onRetry, child: Text(context.t.errors.retry)),
          ],
        ),
      ),
    );
  }
}
