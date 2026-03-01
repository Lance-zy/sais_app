import 'package:flutter/material.dart';

class AdmissionScreen extends StatefulWidget {
  const AdmissionScreen({super.key});

  @override
  State<AdmissionScreen> createState() => _AdmissionScreenState();
}

class _AdmissionScreenState extends State<AdmissionScreen> {
  bool _newApplication = false;
  bool _withMiddleName = true;
  bool _foreigner = false;
  bool _confirmInformation = false;

  static const Color _lineColor = Color(0xFF5C35FF);
  static const Color _sectionBlue = Color(0xFF001BFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECECEC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 560),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  color: const Color(0xFFECECEC),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _titleBar(),
                    _checkRow(
                      value: _newApplication,
                      label: 'New application',
                      onChanged: (value) {
                        setState(() => _newApplication = value ?? false);
                      },
                    ),
                    _lineField('Control No'),
                    const SizedBox(height: 4),
                    const Padding(
                      padding: EdgeInsets.only(left: 168),
                      child: Text(
                        'Input the Control No. to check\nfor Approval, Exam Result,\nlogin ID & password',
                        style: TextStyle(
                          color: _sectionBlue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    _sectionHeader('Personal Data'),
                    _lineField('Last Name'),
                    _lineField('First Name'),
                    _checkRow(
                      value: _withMiddleName,
                      label: 'Middle Name',
                      onChanged: (value) {
                        setState(() => _withMiddleName = value ?? false);
                      },
                    ),
                    _lineField('Name Ext.', withDropDown: true, lineWidth: 70),
                    _lineField('Sex', withDropDown: true, lineWidth: 140),
                    _lineField(
                      'Civil Status',
                      withDropDown: true,
                      lineWidth: 140,
                    ),
                    _lineField('Religion', withHint: true, lineWidth: 85),
                    _lineField('Date of Birth', withDate: true, lineWidth: 140),
                    _lineField('Birth Place'),
                    const Padding(
                      padding: EdgeInsets.only(left: 168, top: 4),
                      child: Text(
                        'Home Address:',
                        style: TextStyle(
                          fontSize: 36 / 2,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    _lineField('Country', withHint: true, lineWidth: 85),
                    _lineField('Region', withHint: true, lineWidth: 85),
                    _lineField('Province', withHint: true, lineWidth: 85),
                    _lineField('Municipality', withHint: true, lineWidth: 85),
                    _lineField('Barangay', withHint: true, lineWidth: 85),
                    _lineField('Street'),
                    _lineField('Foreign Address'),
                    _lineField('Tel. No.', lineWidth: 140),
                    _lineField('Cellphone No.', lineWidth: 140),
                    _lineField('Email Address', lineWidth: 280),
                    _lineField(
                      'Member of Cultural\nMinority',
                      withHint: true,
                      lineWidth: 85,
                    ),
                    _lineField('Indigenous Group', lineWidth: 280),
                    _lineField('Citizenship', withHint: true, lineWidth: 85),
                    _lineField(
                      'Dual Citizenship',
                      withHint: true,
                      lineWidth: 85,
                    ),
                    _checkRow(
                      value: _foreigner,
                      label: 'Foreigner',
                      onChanged: (value) {
                        setState(() => _foreigner = value ?? false);
                      },
                    ),
                    _sectionHeader('Family Background'),
                    _subHead('FATHER:'),
                    _lineField('Last Name'),
                    _lineField('First Name'),
                    _lineField('Middle Name'),
                    _lineField('CP No.', lineWidth: 140),
                    _lineField('Occupation', lineWidth: 280),
                    _lineField('Annual Income', lineWidth: 140),
                    _subHead("MOTHER'S MAIDEN NAME:"),
                    _lineField('Last Name'),
                    _lineField('First Name'),
                    _lineField('Middle Name'),
                    _lineField('CP No.', lineWidth: 140),
                    _lineField('Occupation', lineWidth: 280),
                    _lineField('Annual Income', lineWidth: 140),
                    _subHead('GUARDIAN:'),
                    _lineField('Complete Name'),
                    _lineField(
                      'Relationship',
                      withDropDown: true,
                      lineWidth: 140,
                    ),
                    _lineField('CP No.', lineWidth: 140),
                    _sectionHeader('Medical Information'),
                    const Padding(
                      padding: EdgeInsets.only(left: 168, top: 8, bottom: 4),
                      child: Text(
                        'Do you have any health concern?',
                        style: TextStyle(
                          fontSize: 38 / 2,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    _lineField('None', lineWidth: 280),
                    _lineField('Other: Pls. Specify:'),
                    _sectionHeader('Admission Data'),
                    _lineField(
                      'Admission for',
                      withDropDown: true,
                      lineWidth: 140,
                    ),
                    _lineField('As', withDropDown: true, lineWidth: 140),
                    const Padding(
                      padding: EdgeInsets.only(left: 168, top: 4, bottom: 4),
                      child: Text(
                        'Please do NOT abbreviate the name',
                        style: TextStyle(
                          fontSize: 36 / 2,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    _lineField('Name of School'),
                    _lineField(
                      'Address of School',
                      withHint: true,
                      lineWidth: 85,
                    ),
                    _lineField('Strand', withHint: true, lineWidth: 85),
                    _lineField(
                      'Last Year Attended',
                      rightText: '(Ex: 2019)',
                      lineWidth: 70,
                    ),
                    _lineField(
                      'Last Year Level',
                      rightText: '(Ex: 1)',
                      lineWidth: 70,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 168, top: 4, bottom: 4),
                      child: Text(
                        'Incoming Year Level:',
                        style: TextStyle(
                          fontSize: 36 / 2,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    _lineField(
                      'Year Level',
                      rightText: '(Ex: 1)',
                      lineWidth: 70,
                    ),
                    _lineField("Learner's Ref. No.", lineWidth: 140),
                    _lineField('Campus', withHint: true, lineWidth: 85),
                    _lineField(
                      'Preferred Course',
                      withHint: true,
                      lineWidth: 85,
                    ),
                    _lineField('Second Course', withHint: true, lineWidth: 85),
                    _lineField('Third Course', withHint: true, lineWidth: 85),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Required Documents',
                        style: TextStyle(
                          fontSize: 19 * .9,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '(Check if available)',
                        style: TextStyle(fontSize: 16 * .9),
                      ),
                    ),
                    const SizedBox(height: 30),
                    _lineField('Choose Date', withDate: true, lineWidth: 140),
                    _lineField('Time', withDropDown: true, lineWidth: 280),
                    _checkRow(
                      value: _confirmInformation,
                      label: 'Confirm that the information above is correct.',
                      bold: true,
                      onChanged: (value) {
                        setState(() => _confirmInformation = value ?? false);
                      },
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 168, bottom: 16),
                      child: SizedBox(
                        width: 136,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4C75E8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Update',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30 / 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _titleBar() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: Text(
        'Application for Admission',
        style: TextStyle(fontSize: 36 / 2, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _sectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          const Divider(height: 1, color: Colors.black26),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: const TextStyle(
                  color: _sectionBlue,
                  fontWeight: FontWeight.w700,
                  fontSize: 42 / 2,
                ),
              ),
            ),
          ),
          const Divider(height: 1, color: Colors.black26),
        ],
      ),
    );
  }

  Widget _subHead(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 168, top: 10, bottom: 2),
      child: Text(
        title,
        style: const TextStyle(fontSize: 40 / 2, fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget _checkRow({
    required bool value,
    required String label,
    required ValueChanged<bool?> onChanged,
    bool bold = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 158, top: 6, bottom: 2),
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            activeColor: _lineColor,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 37 / 2,
              fontWeight: bold ? FontWeight.w700 : FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _lineField(
    String label, {
    bool withHint = false,
    bool withDropDown = false,
    bool withDate = false,
    double lineWidth = 280,
    String rightText = '',
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 160,
            child: Text(
              label,
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 36 / 2),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: lineWidth,
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: _lineColor, width: 1.4)),
            ),
            child: Row(
              children: [
                const SizedBox(width: 4, height: 30),
                const Spacer(),
                if (withDropDown)
                  const Icon(Icons.keyboard_arrow_down, size: 22),
                if (withDate) const Icon(Icons.calendar_today, size: 18),
              ],
            ),
          ),
          if (withHint) ...[
            const SizedBox(width: 6),
            Container(
              width: 44,
              height: 34,
              decoration: BoxDecoration(
                color: const Color(0xFF4C75E8),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Center(
                child: Text(
                  '?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24 / 2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Text('?', style: TextStyle(fontSize: 34 / 2)),
          ],
          if (rightText.isNotEmpty) ...[
            const SizedBox(width: 8),
            Text(rightText, style: const TextStyle(fontSize: 16 * .9)),
          ],
        ],
      ),
    );
  }
}
